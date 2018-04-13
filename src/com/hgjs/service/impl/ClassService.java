package com.hgjs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hgjs.dao.IClassDAO;
import com.hgjs.service.IClassService;

@Service
public class ClassService implements IClassService{

	@Autowired
	private IClassDAO classDAO;
	
	@Override
	public List getAllClassTitle() {
		// TODO Auto-generated method stub
		return classDAO.getAllClassTitle();
	}

	@Override
	public List getIndexClassTitle() {
		// TODO Auto-generated method stub
		return classDAO.getIndexClassTitle();
	}

	@Override
	public List getIndexClassTitleByName(String name) {
		// TODO Auto-generated method stub
		return classDAO.getIndexClassTitleByName(name);
	}

	@Override
	public List getClassById(Integer id) {
		// TODO Auto-generated method stub
		return classDAO.getClassById(id);
	}

}
