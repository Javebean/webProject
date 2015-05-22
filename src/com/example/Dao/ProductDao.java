package com.example.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.Product;

@Repository
@Transactional
public class ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	
	public void add(Product p){
		try{
			getSession().save(p);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void del(int id) {
		try{
			Product p = new Product();
			p.setId(id);
			getSession().delete(p);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void update(Product p){
		try{
			getSession().update(p);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public List <Product> findall(int userid){
		try{
			//select * from products where user_id=1;
			String hql = "from Product p where p.user.id=?";
			Query query = getSession().createQuery(hql);
			query.setInteger(0, userid);
			List<Product> list = query.list();
			return list; 
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}
}
