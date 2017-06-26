package party.wzlovewmx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import party.wzlovewmx.model.Photo;
import party.wzlovewmx.service.PhotoService;

/**
 * 主页
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@Controller
@RequestMapping("/home")
public class HomeController {
	
	@Autowired
	private PhotoService photoService;
	
	@RequestMapping("index")
	public void index(ModelMap modelMap) {
		System.out.println("aa");
		modelMap.put("photos", photoService.queryAll());
	}
	

	@RequestMapping("manager")
	public void manager() {
		System.out.println("manager");
	}

}
