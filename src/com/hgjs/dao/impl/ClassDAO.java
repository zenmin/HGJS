package com.hgjs.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.hgjs.dao.IClassDAO;
import com.hgjs.modules.TbClass;
import com.hgjs.sessionFactory.SessionFactory;

@Repository
public class ClassDAO extends SessionFactory implements IClassDAO{

	@Override
	public List getAllClassTitle() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "FROM TbClass ";
		Query q = session.createQuery(hql);
		
		List<TbClass> list = q.setMaxResults(20).list();
		session.close();
		return list;
	}

	@Override
	public List getIndexClassTitle() {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "FROM TbClass ";
		Query q = session.createQuery(hql);
		List<TbClass> list = q.setMaxResults(8).list();
		session.close();
		return list;
	}

	@Override
	public List getIndexClassTitleByName(String name) {
		// TODO Auto-generated method stub
		Session session = getSession();
		StringBuffer hql  = new StringBuffer();
		hql.append("FROM TbClass");
		if(name.equals("")==false) {
			hql.append(" where classTitle like '%" + name + "%' ");
		}
		
		Query q = session.createQuery(hql.toString());
		List<TbClass> list = q.setMaxResults(20).list();
		session.close();
		return list;
	}

	@Override
	public List getClassById(Integer id) {
		// TODO Auto-generated method stub
		Session session = getSession();
		String hql  = "FROM TbClass where id = ? ";
		Query q = session.createQuery(hql);
		q.setParameter(0, id);
		List<TbClass> list = q.list();
		session.close();
		return list;
	}
}
