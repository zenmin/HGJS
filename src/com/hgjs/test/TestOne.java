package com.hgjs.test;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;
import org.springframework.stereotype.Component;

import com.hgjs.sessionFactory.SessionFactory;

public class TestOne {
	
	@Test
	public void getSession() {
		SessionFactory factory = new SessionFactory();
		Session session = factory.getSession();
		String hql  = "select new TbNews(classTitle) from TbNews t";
		Query q = session.createQuery(hql);
		List list = q.list();
		System.out.println(list);
		session.close();
	}
}
