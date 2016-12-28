package com.in.model.DAO;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.Entity.Category;
import com.in.model.Entity.Shipping;
@Repository
public class ShippingDAOImpl implements ShippingDAO
{
	@Autowired
	 private SessionFactory session;

	@Transactional
	public void add(Shipping shipping) {
		session.getCurrentSession().save(shipping);
		
	}

	/*@Transactional
	public void delete(int Nid) {
		Shipping s=new Shipping ();
		s.setNid(Nid);
			session.getCurrentSession().delete(s);		
			
	}
*/
}
