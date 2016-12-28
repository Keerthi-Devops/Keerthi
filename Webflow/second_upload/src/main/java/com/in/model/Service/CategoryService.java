package com.in.model.Service;

import java.util.List;

import com.in.model.Entity.Category;
import com.in.model.Entity.Product;

public interface CategoryService {

	public void add(Category category);
	public void update(Category category);
	public void delete(int Pid);
	public List getAllCategory();
	public Category getCategory(int cid);
	
}
