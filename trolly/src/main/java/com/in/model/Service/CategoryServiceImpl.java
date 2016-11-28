package com.in.model.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.DAO.CategoryDAO;
import com.in.model.Entity.Category;


@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;


	@Transactional
	public void add(Category category) {
		categoryDAO.add(category);		
		
	}

	@Transactional
	public void update(Category category) {
		categoryDAO.update(category);		
	
	}

	@Transactional
	public void delete(int Cid) {
		categoryDAO.delete(Cid);
		
	}

	
	@Override
	public List getAllCategory() {
		return categoryDAO.getAllCategory();
	}
	
}
