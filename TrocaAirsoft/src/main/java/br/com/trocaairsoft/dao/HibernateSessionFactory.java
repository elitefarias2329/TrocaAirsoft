package br.com.trocaairsoft.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * 
 * @author andre.gomes
 *
 */
public class HibernateSessionFactory {

	/**
	 * 
	 * @return
	 * @throws Exception
	 */
	public static Session getHibernateSession() throws HibernateException{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
        return sessionFactory.openSession();
	}
	
	
}
