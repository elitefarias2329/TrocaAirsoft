package br.com.trocaairsoft.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import br.com.trocaairsoft.constantes.Constantes;
import br.com.trocaairsoft.entity.AnuncianteEntity;
import br.com.trocaairsoft.exception.BusinessException;
import br.com.trocaairsoft.vo.LoginVO;

/**
 * 
 * @author andre.gomes
 *
 */
@Repository
public class LoginDAO {
	

	/**
	 * 
	 * @throws BusinessException 
	 * @throws Exception
	 */
	public LoginVO login(LoginVO vo) throws HibernateException, BusinessException{
		
		Session session = HibernateSessionFactory.getHibernateSession();
		
		try{
			Query query = session.createQuery("FROM AnuncianteEntity WHERE EMAIL = :EMAIL AND SENHA = :SENHA");
			query.setParameter(Constantes.EMAIL, vo.getEmail());
			query.setParameter(Constantes.SENHA, vo.getSenha());
			vo.setUsuarioLogado((AnuncianteEntity)query.uniqueResult());
			
			if(null == vo.getUsuarioLogado()){
				throw new BusinessException("E-mail ou senha inválidos.");
			}
			
		}
		finally{
			session.close();
		}
		return vo;
	}

	
	
	
	
}
