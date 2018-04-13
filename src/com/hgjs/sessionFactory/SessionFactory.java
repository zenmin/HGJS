package com.hgjs.sessionFactory;

import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SessionFactory {
	public Session getSession() {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
		org.hibernate.SessionFactory factory = applicationContext.getBean("sessionFactory",org.hibernate.SessionFactory.class);
		Session session = factory.openSession();
		return session;
	}
}
