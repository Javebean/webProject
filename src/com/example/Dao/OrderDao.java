package com.example.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.Order;
import com.example.domain.OrderGoods;

@Repository
@Transactional
public class OrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public void addOrder(Order o){
		try{
			getSession().save(o);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public void addOrderGoods(OrderGoods og){
		try{
			getSession().save(og);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public List<Order> findAddOrders(){
		try{
			/*String hql = "select o.location , o.province, o.city ,o.counties,"
					+ " o.street ,o.zipcode, o.addressee, o.phonenum,g.name,g.num,g.price from Order o,OrderGoods g where o.id=g.order.id";*/
			String hql = "from Order";
			return getSession().createQuery(hql).list();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	public void changeStatus(int id){
		try{
			String hql = "update Order o set o.sta.id=2 where id=?";
			getSession().createQuery(hql).setInteger(0, id).executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public List<Order> findAuditedOrder(){
		try{
			String hql = "from Order o where o.sta.id=2";
			return getSession().createQuery(hql).list();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}
	public List<Order> findNotAuditedOrder(){
		try{
			String hql = "from Order o where o.sta.id=1";
			return getSession().createQuery(hql).list();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
	}
}
