package com.hgjs.controller;

import org.jboss.logging.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 配置不过视图解析器就行了  不用这个了
 * 
 * @author 曾敏
 *
 */

@Controller
public class ToPageController {
	
	@RequestMapping("topage")
	public String toPage(@Param String pageName) {
		System.out.println(1);
		return pageName;
	}
}
