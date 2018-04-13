package com.hgjs.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hgjs.dao.INewsDAO;
import com.hgjs.service.INewsService;

@Service
public class NewsService implements INewsService{
	
	@Resource
	private INewsDAO dao;
	
	@Override
	public List getAllTitle(Integer nowPage) {
		// TODO Auto-generated method stub
		return dao.getAllTitle(nowPage);
	}

	@Override
	public List getIndexTitleGs() {
		// TODO Auto-generated method stub
		return dao.getIndexTitleGs();
	}

	@Override
	public List getIndexTitleHy() {
		// TODO Auto-generated method stub
		return dao.getIndexTitleHy();
	}

	@Override
	public List findNewsById(Integer id) {
		// TODO Auto-generated method stub
		return dao.findNewsById(id);
	}

}
