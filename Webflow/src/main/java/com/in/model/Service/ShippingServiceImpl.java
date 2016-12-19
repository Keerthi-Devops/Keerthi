package com.in.model.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.DAO.ShippingDAO;
import com.in.model.Entity.Shipping;

@Service
public class ShippingServiceImpl implements ShippingService {

	@Autowired
	private ShippingDAO shippingDAO;

	@Transactional
	public void add(Shipping shipping) 
	{
		shippingDAO.add(shipping);	
	}

	/*@Transactional
	public void delete(int Nid) 
	{
		shippingDAO.delete(Nid);	
		
	}*/
}
