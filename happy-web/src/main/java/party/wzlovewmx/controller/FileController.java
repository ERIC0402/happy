package party.wzlovewmx.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
		if(!saveFile(file, request.getSession().getServletContext().getRealPath("upload"))) {
			map.put("message", file.getOriginalFilename() + "上传失败！");
			map.put("success", false);
		}else {
			map.put("success", true);
		}
		return map;
	}
	
	@RequestMapping("uploads")
	@ResponseBody
	public Map<String, Object> uploads(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request, ModelMap model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 创建你要保存的文件的路径
		String path = request.getSession().getServletContext().getRealPath("upload");
		StringBuilder sb = new StringBuilder();
		boolean isSuccess = true;
		for(CommonsMultipartFile file : files) {
			if(!saveFile(file, path)) {
				sb.append(file.getOriginalFilename() + "上传失败！<br />");
				isSuccess = false;
			}
		}
		map.put("message", sb.toString());
		map.put("success", isSuccess);
		return map;
	}

	private boolean saveFile(MultipartFile file, String path) {
		// 获取该文件的文件名
		String fileName = file.getOriginalFilename();
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		// 保存
		try {
			file.transferTo(targetFile);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	

}
