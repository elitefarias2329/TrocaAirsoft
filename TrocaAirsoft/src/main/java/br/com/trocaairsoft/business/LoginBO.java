package br.com.trocaairsoft.business;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.trocaairsoft.dao.LoginDAO;
import br.com.trocaairsoft.exception.BusinessException;
import br.com.trocaairsoft.vo.LoginVO;

/**
 * 
 * @author andre.gomes
 *
 */
@Service
public class LoginBO {
	
	@Autowired
	LoginDAO loginDao;
		
   /**
	* 
	* @param vo
	* @return
	* @throws HibernateException
	* @throws BusinessException
	*/
	public LoginVO login(LoginVO vo) throws HibernateException, BusinessException{
		return loginDao.login(vo);
	}
	

}
