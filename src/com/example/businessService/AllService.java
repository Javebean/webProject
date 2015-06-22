package com.example.businessService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Dao.AdminDao;
import com.example.Dao.CproductionsDao;
import com.example.Dao.OrderDao;
import com.example.Dao.ProductDao;
import com.example.Dao.UserDao;
import com.example.domain.Cproductions;
import com.example.domain.Order;
import com.example.domain.OrderGoods;
import com.example.domain.Product;
import com.example.domain.User;
import com.example.domain.admin;


@Service
public class AllService {
	@Autowired
	private AdminDao adao;
	@Autowired
	private ProductDao dao;
	@Autowired
	private UserDao udao;
	@Autowired
	private CproductionsDao cdao;
	@Autowired
	private OrderDao odao;
	
	public void add(Product pro){
		dao.add(pro);
	}
	
	public void updateCart(double singlePrice,String name, int userId){
		dao.updateCart(singlePrice, name, userId);
	}
	
	public void del(String name,int userID){
		dao.del(name,userID);
	}
	public void update(Product pro){
		dao.update(pro);
	}
	public List<Product> findAll(int userid){
		return dao.findall(userid);
	}
	public void adduser(User u){
		udao.add(u);
	}
	public User find(String name){
		return udao.find(name);
	}
	public User find(String name,String password){
		return udao.find(name, password);
	}
	
	public void addAdmin(admin	a){
		adao.addAdmin(a);
	}
	
	public admin findadmin(String name,String password){
		return adao.find(name, password);
	}
	
	
	//cp...
	public  List<Cproductions>showAllCP(){
		return cdao.showAllCP();
	}
	
	public void addCP(Cproductions cp){
		cdao.addCP(cp);
	}
	
	public void updateCP(Cproductions cp){
		cdao.updateCP(cp);
	}
	
	public void deleteCP(int cp_id){
		cdao.deleteCP(cp_id);
	}
	
	//
	public void addOrder(Order o){
		odao.addOrder(o);
	}
	
	public void addOrderGoods(OrderGoods og){
		odao.addOrderGoods(og);
	}
	
	public Product findByName(String name,int userId){
		return dao.findbyName(name, userId);
	}
	
	//order......
	
	public List<Order> findAllOrder(){
		return odao.findAddOrders();
	}
	
	public void changeStatus(int id){
		odao.changeStatus(id);
	}
	
	public List<Order> findAuditedOrder(){
		return  odao.findAuditedOrder();
	}
	public List<Order> findNotAuditedOrder(){
		return  odao.findNotAuditedOrder();
	}
}
