package com.hgjs.service;

import java.util.List;

public interface INewsService {
	public List getAllTitle(Integer nowPage);
	public List getIndexTitleGs();
	public List getIndexTitleHy();
	public List findNewsById(Integer id);
}
