package com.example.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.admin;


@Repository
@Transactional
public class AdminDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void addAdmin(admin	adm){
		try{
			getSession().save(adm);
			
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public admin find(String name,String password){
		try{
			
			String hql = "from admin where username=? and password=?";
			return (admin) getSession().createQuery(hql).setString(0, name)
				.setString(1, password).uniqueResult();
			
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
