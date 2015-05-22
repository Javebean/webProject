package com.example.Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.User;
@Repository
@Transactional
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public void add(User user) {
		try {
			getSession().save(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}

	public User find(String name) {
		try {
			String hql="from User where username=?";
		return	(User) getSession().createQuery(hql).setString(0, name).uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public User find(String name,String password){
		try{
			String hql = "from User where username=? and password=?";
			
			Query createQuery = getSession().createQuery(hql);
			createQuery.setString(0, name);
			createQuery.setString(1, password);
			return (User) createQuery.uniqueResult();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
}
