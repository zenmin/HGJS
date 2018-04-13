package com.hgjs.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hgjs.modules.TbClass;
import com.hgjs.service.IClassService;


@SuppressWarnings("unchecked")
@Controller
public class ClassController {
	
	@Autowired
	private IClassService classService;
	
	// 获取全部标题
	@ResponseBody						//  返回json
	@RequestMapping("showClassTitle")
	public List showClassTitle() {
		List<TbClass> list = classService.getAllClassTitle();
		return list; 
	}
	
	// 获取首页三条标题
	@ResponseBody						//  返回json
	@RequestMapping("showClassIndex")
	public List showClassIndex() {
		List<TbClass> list = classService.getIndexClassTitle();
		return list;
	}
	
	// 根据名称查询
	@ResponseBody						//  返回json
	@RequestMapping("showClassByName")
	public List showClassByName(@RequestParam String name) {
		List<TbClass> list = classService.getIndexClassTitleByName(name);
//		System.out.println(list);
		return list;
	}
	
	// 根据id查询产品
	@ResponseBody						//  返回json
	@RequestMapping("getClassById")
	public List getClassById(@RequestParam Integer id) {
		List<TbClass> list = classService.getClassById(id);
//		System.out.println(list);
		return list;
	}
	
}
