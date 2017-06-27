package party.wzlovewmx.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
    public void download(HttpServletRequest request, HttpServletResponse res) throws IOException {
		String fileName = request.getParameter("fileName");
		String filePath = request.getParameter("filePath");
        OutputStream os = res.getOutputStream();
        try {
            res.reset();
            res.setHeader("Content-Disposition", "attachment; filename=" + fileName);
            res.setContentType("application/octet-stream; charset=utf-8");
            os.write(FileUtils.readFileToByteArray(new File(filePath)));
            os.flush();
        } finally {
            if (os != null) {
                os.close();
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
