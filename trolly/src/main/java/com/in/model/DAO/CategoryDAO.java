package com.in.model.DAO;

import java.util.List;

import com.in.model.Entity.Category;
import com.in.model.Entity.Product;

public interface CategoryDAO {
	
	public void add(Category category);
	public void update(Category category);
	public void delete(int Pid);
	public List getAllCategory();

}
