package com.in.model.DAO;

import java.util.List;

import com.in.model.Entity.Category;
import com.in.model.Entity.Product;

public interface ProductDAO {
	public void add(Product product);
	public void update(Product product);
	public void delete(int Pid);
		public List <Product> getAllProduct();
		


}
