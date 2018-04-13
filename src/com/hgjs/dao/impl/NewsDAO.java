package com.hgjs.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.hgjs.dao.INewsDAO;
import com.hgjs.modules.TbNews;
import com.hgjs.sessionFactory.SessionFactory;
@SuppressWarnings("unchecked")
@Repository
public class NewsDAO extends SessionFactory implements INewsDAO{
	//  获取新闻标题
	@Override
	public List<TbNews> getAllTitle(Integer nowPage) {
		// 获取session
		Session session = getSession();
		// 定义SQL
		String hql  = "select new TbNews(id,title,date) FROM TbNews ";
		// 创建Query
		Query q = session.createQuery(hql);
		//每页显示的新闻条数
		int pageSize = 15;
		//执行查询并且分页
		List<TbNews> list= q.setFirstResult((nowPage-1)*pageSize).setMaxResults(pageSize).list();
		// 关闭session
		session.close();
		// 返回结果集
		return list;
	}

	@Override
	public List getIndexTitleGs() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "select new TbNews(id,title,date) FROM TbNews WHERE homePage= 1 AND class_='公司新闻' ";
		Query q = session.createQuery(hql);
		List<TbNews> list = q.setMaxResults(3).list();
		session.close();
		return list;
	}

	@Override
	public List getIndexTitleHy() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "select new TbNews(id,title,date) FROM TbNews WHERE homePage= 1 AND class_='行业新闻' ";
		Query q = session.createQuery(hql);
		List<TbNews> list = q.setMaxResults(3).list();
		session.close();
		return list;
	}

	@Override
	public List findNewsById(Integer id) {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "FROM TbNews where id = ?";
		Query q = session.createQuery(hql);
		q.setParameter(0, id);
		List<TbNews> list = q.list();
		session.close();
		return list;
	}
}
