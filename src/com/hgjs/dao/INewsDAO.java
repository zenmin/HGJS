package com.hgjs.dao;

import java.util.List;

public interface INewsDAO {
	public List getAllTitle(Integer nowPage);
	public List getIndexTitleGs();
	public List getIndexTitleHy();
	public List findNewsById(Integer id);
}
