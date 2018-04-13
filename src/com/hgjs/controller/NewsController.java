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
	
	// 获取新闻标题并分页
	@ResponseBody						//  返回json
	@RequestMapping("showTitle")
	public List showTitle(@RequestParam int page) {
		List list = service.getAllTitle(page);
		return list;
	}
	
	//公司新闻
	@ResponseBody						//  返回json
	@RequestMapping("showTitleGs")
	public List showTitleGs() {
		
		List list = service.getIndexTitleGs();
		return list;
	}
	
	// 行业新闻
	@ResponseBody						//  返回json
	@RequestMapping("showTitleHy")
	public List showTitleHy() {
		
		List list = service.getIndexTitleHy();
		return list;
	}
	
	// 根据id查询新闻
	@ResponseBody						//  返回json
	@RequestMapping("findNewsById")
	public List findNewsById(@RequestParam Integer id,HttpServletRequest req,HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		res.setCharacterEncoding("utf-8");
		List list = service.findNewsById(id);
		return list;
	}
	
	
}
