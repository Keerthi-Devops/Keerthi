package com.in.model.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.DAO.RegisterDAO;
import com.in.model.Entity.Register;
import com.in.model.Entity.RoleTable;

@Service
public class RegisterServiceImpl implements RegisterService 
{
	@Autowired
	private RegisterDAO registerDAO;
	
	@Transactional
	public void add(Register register) {
		registerDAO.add(register);		
	}

	@Transactional
	public void addrole(RoleTable r) {
		registerDAO.addrole(r);		
	}

}
