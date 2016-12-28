/*package com.in.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.in.model.Entity.CartItems;
import com.in.model.Entity.Product;
import com.in.model.Service.CartService;
import com.in.model.Service.ProductService;

@Controller
public class CartController 
{
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/Cart")
	private String c(@RequestParam("value")int id,Map<String,Object>map)
	{
		CartItems cartItems=new CartItems();
		Product p= productService.getProduct(id);
		cartItems.setQuantity(1);
		cartItems.setTotalPrice(p.getPrice());
		cartItems.setProduct(p);
		cartService.add(cartItems);
		map.put("cartList",cartService.getAllCartItems());
		return "Cart";
		}

}
*/