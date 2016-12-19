package com.in.model.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.Entity.Register;
import com.in.model.Entity.RoleTable;
@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO{

	@Autowired
	 private SessionFactory session;

	@Transactional
	public void add(Register register) {
		session.getCurrentSession().save(register);
		
	}

	@Transactional
	public void addrole(RoleTable r)
	{
		session.getCurrentSession().save(r);
		
	}

}
