package party.wzlovewmx.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MaxUploadSizeExceededException;

/**
 * 异常
 * 
 * 作者：王政
 * 创建时间：2017年4月19日 下午5:12:52
 */
@ControllerAdvice
public class ExceptionController {

	/**
	 *异常处理
	 */
	@ExceptionHandler(Exception.class)
	@ResponseBody
	public Map<String, String> ExceptionHandler(Exception exceededException)  {
		Map<String, String> map = new HashMap<String, String>();
		if (exceededException != null && (exceededException instanceof MaxUploadSizeExceededException)) {
			long maxSize = ((MaxUploadSizeExceededException) exceededException).getMaxUploadSize();
			map.put("error", "上传文件太大，不能超过" + maxSize / 1024 + "k");
		} else {
			map.put("error", "出现异常信息");
		}
		return map;
	}

}
