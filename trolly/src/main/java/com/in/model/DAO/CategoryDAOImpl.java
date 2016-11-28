package com.in.model.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.Entity.Category;

@Repository
@Transactional

public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	 private SessionFactory session;

	@Transactional
	public void add(Category category) {
		session.getCurrentSession().save(category);
		
	}

	@Transactional
	public void update(Category category) {
		Session s=session.getCurrentSession();
		s.update(category);
		s.flush();		
	}

	@Transactional
	public void delete(int Cid)
	{
		Category c=new Category ();
		c.setCid(Cid);
			session.getCurrentSession().delete(c);		
	}

	@Transactional
	public List getAllCategory() {
		return session.getCurrentSession().createQuery("from Category").list();
	
		
	}
}