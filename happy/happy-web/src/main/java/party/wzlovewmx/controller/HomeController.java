package party.wzlovewmx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主页
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@Controller
@RequestMapping("/home")
public class HomeController {
	
	@RequestMapping("index")
	public void index() {
		System.out.println("aa");
	}
	

	@RequestMapping("manager")
	public void manager() {
		System.out.println("manager");
	}

}
