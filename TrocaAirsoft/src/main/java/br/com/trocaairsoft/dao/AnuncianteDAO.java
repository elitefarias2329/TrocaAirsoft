package br.com.trocaairsoft.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 * 
 * @author andre.gomes
 *
 */
@Repository
public class AnuncianteDAO {
	

	/**
	 * 
	 * @throws Exception
	 */
	public void testaConexao() throws Exception{
		Session session = HibernateSessionFactory.getHibernateSession();
		System.out.println(session);
	}

}
