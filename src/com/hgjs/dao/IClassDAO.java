package com.hgjs.dao;

import java.util.List;

public interface IClassDAO {
	public List getAllClassTitle();
	public List getIndexClassTitle();
	public List getIndexClassTitleByName(String name);
	public List getClassById(Integer id);
}
