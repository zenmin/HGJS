package com.hgjs.controller;

import org.jboss.logging.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ���ò�����ͼ������������  ���������
 * 
 * @author ����
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
