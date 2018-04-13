package com.hgjs.service;

import java.util.List;

public interface IClassService {
	public List getAllClassTitle();
	public List getIndexClassTitle();
	public List getIndexClassTitleByName(String name);
	public List getClassById(Integer id);
}
