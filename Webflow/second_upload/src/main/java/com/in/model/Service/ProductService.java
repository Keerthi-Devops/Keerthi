package com.in.model.Service;

import java.util.List;

import com.in.model.Entity.Product;

public interface ProductService {

	public void add(Product product);
	public void update(Product product);
	public void delete(int Pid);
	public Product getProduct(int Pid);

		public List <Product> getAllProduct();
		public List<Product> getAllProductfromCategory(String id);


}
