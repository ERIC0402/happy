package party.wzlovewmx.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.Thumbnails.Builder;
import party.wzlovewmx.prop.CustomizedPlaceHolder;

/**
 * 管理
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@Controller
@RequestMapping("/file")
public class FileController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);

	@RequestMapping("upload")
	@ResponseBody
	public Map<String, Object> upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 创建你要保存的文件的路径
		String path = CustomizedPlaceHolder.getProperty("photo.path");
		if(StringUtils.isEmpty(path)) {
			path = request.getSession().getServletContext().getRealPath("upload").replace("\\", "/");
		}
		path = saveFile(file, path);
		logger.info(path);
		if(StringUtils.isEmpty(path)) {
			map.put("message", file.getOriginalFilename() + "上传失败！");
			map.put("success", false);
		}else {
			map.put("fileName", file.getOriginalFilename());
			map.put("filePath", path);
			map.put("success", true);
		}
		return map;
	}
	
	@RequestMapping("uploads")
	@ResponseBody
	public Map<String, Object> uploads(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request, ModelMap model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 创建你要保存的文件的路径
		String path = CustomizedPlaceHolder.getProperty("photo.path");
		if(StringUtils.isEmpty(path)) {
			path = request.getSession().getServletContext().getRealPath("upload").replace("\\", "/");
		}
		StringBuilder sb = new StringBuilder();
		boolean isSuccess = true;
		for(CommonsMultipartFile file : files) {
			if(StringUtils.isEmpty(saveFile(file, path))) {
				sb.append(file.getOriginalFilename() + "上传失败！<br />");
				isSuccess = false;
			}
		}
		map.put("message", sb.toString());
		map.put("success", isSuccess);
		return map;
	}
	
	@RequestMapping("download")
    public void download(HttpServletRequest request, HttpServletResponse res, @RequestParam(required = false, name = "scale") Double scale, @RequestParam(required = false, name = "quality") Double quality, @RequestParam(required = false, name = "size") String size) {
		String fileName = request.getParameter("fileName");
		String filePath = request.getParameter("filePath");
        OutputStream os = null;
        try {
        	os = res.getOutputStream();
            res.reset();
            res.setHeader("Content-Disposition", "attachment; filename=" + fileName);
            res.setContentType("application/octet-stream; charset=utf-8");
            Builder<File> file = Thumbnails.of(filePath);
            if(scale != null) {
            	file.scale(scale);
            }else if(size == null){
            	file.scale(1);
            }
            if(quality != null) {
            	file.outputQuality(quality);
            }
            if(!StringUtils.isEmpty(size)) {
            	String[] sizes = size.split(",");
            	if(sizes.length == 2) {
            		//按指定大小把图片进行缩和放（会遵循原图高宽比例）
            		int width = Integer.parseInt(sizes[0]);
            		int height = Integer.parseInt(sizes[1]);
            		file.size(width, height);
            	}
            }
            file.toOutputStream(os);
            os.flush();
        } catch (IOException e) {
			e.printStackTrace();
        } finally {
            if (os != null) {
                try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
            }
        }
    }

	private String saveFile(MultipartFile file, String path) {
		// 获取该文件的文件名
		path += "/" + UUID.randomUUID() + file.getOriginalFilename();
		File targetFile = new File(path);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		// 保存
		try {
			file.transferTo(targetFile);
			return path;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

}
