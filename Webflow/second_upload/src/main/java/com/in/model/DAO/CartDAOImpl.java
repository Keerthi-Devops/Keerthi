/*package com.in.model.DAO;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.in.model.Entity.CartItems;

@Repository

public class CartDAOImpl implements CartDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void add(CartItems cartItems) {
		sessionFactory.getCurrentSession().save(cartItems);		
	}

	@Override
	public List getAllCartItems() {
		return sessionFactory.getCurrentSession().createQuery("from CartItems ").list();
	}

}
*/