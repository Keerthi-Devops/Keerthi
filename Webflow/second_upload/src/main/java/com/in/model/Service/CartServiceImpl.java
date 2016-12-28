/*package com.in.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.DAO.CartDAO;
import com.in.model.Entity.CartItems;

@Service
public class CartServiceImpl  implements CartService
{
	
	@Autowired
	private CartDAO cartDAO;
	
	@Transactional

	public void add(CartItems cartItems) {
		cartDAO.add(cartItems);
		
	}

	@Transactional
	public List getAllCartItems() {
		return cartDAO.getAllCartItems();
	}

}
*/