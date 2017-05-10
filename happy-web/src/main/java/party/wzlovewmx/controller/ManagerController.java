package party.wzlovewmx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 管理
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {

	@RequestMapping("photo")
	public void photo() {
		System.out.println("photo");
	}

	@RequestMapping("upload")
	public void upload() {
		System.out.println("upload");
	}

}
