package com.example.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.Cproductions;

@Repository
@Transactional
public class CproductionsDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public List<Cproductions> showAllCP(){
		try{
			String hql = "from Cproductions";
			return getSession().createQuery(hql).list();
			
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public void addCP(Cproductions cp){
		try{
			getSession().save(cp);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public void updateCP(Cproductions cp){
		try{
			getSession().saveOrUpdate(cp);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public void deleteCP(int cp_id){
		try{
			String hql = "delete from Cproductions where id=?";
			getSession().createQuery(hql).setInteger(0, cp_id).executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
}
