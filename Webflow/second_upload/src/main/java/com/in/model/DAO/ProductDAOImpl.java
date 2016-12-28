package com.in.model.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.in.model.Entity.Category;
import com.in.model.Entity.Product;
import com.in.model.Entity.Product;
import com.in.model.Entity.Product;

@Repository
@Transactional

public class ProductDAOImpl implements ProductDAO {

	@Autowired
	 private SessionFactory session;
 

	
	@Transactional
	public void add(Product product)
	{
		session.getCurrentSession().save(product);
	
}

	@Transactional
	public void update(Product product) {
		Session s=session.getCurrentSession();
		s.update(product);
		s.flush();
	
}

	@Transactional
public void delete(int Pid) {
		Product p=new Product();
		p.setPid(Pid);
			session.getCurrentSession().delete(p);			
	
}

	@Transactional
public List<Product> getAllProduct() {
		return session.getCurrentSession().createQuery("from Product").list();

}

	@Transactional
	public List<Product> getAllProductfromCategory(String id) {
		
		String query="from Product where CNAME=:output";
		List<Product> image=session.getCurrentSession().createQuery(query).setParameter("output",id).list();
		System.out.println(image.get(0).getCname());
		return image;
	}

	@Transactional
	public Product getProduct(int Pid) {
		return (Product)session.getCurrentSession().get(Product.class, Pid);

	}

	
}
