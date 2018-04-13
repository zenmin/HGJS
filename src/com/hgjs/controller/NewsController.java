package com.hgjs.controller;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hgjs.service.INewsService;

@Controller
public class NewsController {
	
	@Autowired
	private INewsService service;
	
	// ��ȡ���ű��Ⲣ��ҳ
	@ResponseBody						//  ����json
	@RequestMapping("showTitle")
	public List showTitle(@RequestParam int page) {
		List list = service.getAllTitle(page);
		return list;
	}
	
	//��˾����
	@ResponseBody						//  ����json
	@RequestMapping("showTitleGs")
	public List showTitleGs() {
		
		List list = service.getIndexTitleGs();
		return list;
	}
	
	// ��ҵ����
	@ResponseBody						//  ����json
	@RequestMapping("showTitleHy")
	public List showTitleHy() {
		
		List list = service.getIndexTitleHy();
		return list;
	}
	
	// ����id��ѯ����
	@ResponseBody						//  ����json
	@RequestMapping("findNewsById")
	public List findNewsById(@RequestParam Integer id,HttpServletRequest req,HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		res.setCharacterEncoding("utf-8");
		List list = service.findNewsById(id);
		return list;
	}
	
	
}
