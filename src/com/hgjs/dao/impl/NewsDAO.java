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
	//  ��ȡ���ű���
	@Override
	public List<TbNews> getAllTitle(Integer nowPage) {
		// ��ȡsession
		Session session = getSession();
		// ����SQL
		String hql  = "select new TbNews(id,title,date) FROM TbNews ";
		// ����Query
		Query q = session.createQuery(hql);
		//ÿҳ��ʾ����������
		int pageSize = 15;
		//ִ�в�ѯ���ҷ�ҳ
		List<TbNews> list= q.setFirstResult((nowPage-1)*pageSize).setMaxResults(pageSize).list();
		// �ر�session
		session.close();
		// ���ؽ����
		return list;
	}

	@Override
	public List getIndexTitleGs() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "select new TbNews(id,title,date) FROM TbNews WHERE homePage= 1 AND class_='��˾����' ";
		Query q = session.createQuery(hql);
		List<TbNews> list = q.setMaxResults(3).list();
		session.close();
		return list;
	}

	@Override
	public List getIndexTitleHy() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "select new TbNews(id,title,date) FROM TbNews WHERE homePage= 1 AND class_='��ҵ����' ";
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
