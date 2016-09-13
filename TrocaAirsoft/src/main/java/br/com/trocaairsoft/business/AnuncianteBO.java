package br.com.trocaairsoft.business;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.trocaairsoft.dao.AnuncianteDAO;

@Service
public class AnuncianteBO {
	
	@Autowired
	AnuncianteDAO dao;
	

}
