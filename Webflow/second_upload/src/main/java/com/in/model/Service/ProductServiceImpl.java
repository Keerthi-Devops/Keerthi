package com.in.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.DAO.ProductDAO;
import com.in.model.Entity.Product;
import com.in.model.Entity.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;

	@Transactional
	public void add(Product product) 
	{
		productDAO.add(product);		
	}

	@Transactional
	public void update(Product product) {
		productDAO.update(product);
		
	}

	@Transactional
	public void delete(int Pid) {
		productDAO.delete(Pid);
		
	}

	@Transactional
	public List<Product> getAllProduct() {
		return productDAO.getAllProduct();
	}

	@Transactional
	public List<Product> getAllProductfromCategory(String id) 
	{
		return productDAO.getAllProductfromCategory(id);
	
	}

	@Transactional
	public Product getProduct(int Pid) {
		return productDAO.getProduct(Pid);

	}

	}
