package party.wzlovewmx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import party.wzlovewmx.model.Photo;
import party.wzlovewmx.service.PhotoService;

/**
 * 管理
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	private PhotoService photoService;

	@RequestMapping("photo")
	public void photo() {
		System.out.println("photo");
	}

	@RequestMapping("upload")
	public void upload() {
		System.out.println("upload");
	}
	
	@RequestMapping("save")
	public String save(@RequestParam("fileName") String fileName, @RequestParam("filePath") String filePath, @RequestParam("desc") String desc) {
		Photo photo = new Photo();
		photo.setFilepath(filePath);
		photo.setFilename(fileName);
		photo.setDescription(desc);
		photoService.save(photo);
		return "redirect:/home/index";
	}

}
