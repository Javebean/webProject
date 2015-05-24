package com.example.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.Dao.AdminDao;
import com.example.Dao.ProductDao;
import com.example.Dao.UserDao;
import com.example.actions.ProductAction;
import com.example.actions.UserAction;
import com.example.actions.adminAction;
import com.example.businessService.AllService;
import com.example.domain.Cproductions;
import com.example.domain.Product;
import com.example.domain.User;
import com.example.domain.admin;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/application.xml")
public class workTest {
	
	@Autowired
	private AllService service;
	@Autowired
	private ProductDao pdao;
	@Autowired
	private AdminDao adao;
	@Autowired
	private UserDao udao;
	
	@Autowired
	private ProductAction paction;
	@Autowired
	private adminAction aaction;
	@Autowired
	private UserAction uaction;
	@Test
	public void testAddUser(){
		//service.adduser(new User("aa", "bb", "448267@qq.com"));
		System.out.println(aaction);
	}
	@Test
	public void testFindUser(){
		User u =service.find("aa", "bb");
		System.out.println(u.getEmail());
	}
	@Test
	public void testFindUsername(){
		User u = service.find("aa");
		System.out.println(u.getPassword());
	}
	@Test
	public void testAddProduction(){
		User u = new User();
		u.setId(1);
		
		Product p = new Product("a", "b", "c", "d", "z", "z", "z", "d");
		p.setUser(u);//设置这个产品关联的ID为1的User
		service.add(p);  
	}
	
	@Test
	public void testDelProduction(){
		service.del(6);
	}
	@Test
	public void testUpdateProduction(){
		User u = new User();//update的时候也要更新外键，否则置为空
		u.setId(1);
		
		Product pro = new Product("weiwei", "b", "c", "d", "z", "z", "z", "d");
		pro.setId(4);
		pro.setUser(u);
		service.update(pro);
	}
	@Test
	public void testFinaAllProduction(){
		List<Product> results= service.findAll(1);
		System.out.println(results.size());
	}
	@Test
	public void testAddAdmin(){
		admin a = new admin();
		a.setUsername("admin");
		a.setPassword("admin");
		service.addAdmin(a);
	}
	
	@Test
	public void testFindAdmin(){
		
		admin ad = service.findadmin("aax", "bbx");
		System.out.println(ad.getId());
	}
	@Test
	public void testProductDao(){
		System.out.println(aaction);
		System.out.println(uaction);
		
	}
	
	//cp....
	@Test
	public void testShowAllCP(){
		List<Cproductions> list = service.showAllCP();
		System.out.println(list.size());		
	}
	@Test
	public void testAddCP(){
		Cproductions cp = new Cproductions("a", "c", "a", "a", "a", "a", "d", "d");
		service.addCP(cp);
	}
	@Test
	public void testUpdateCP(){
		Cproductions cp = new Cproductions("b", "c", "a", "a", "a", "a", "d", "d");
		cp.setId(1);
		service.updateCP(cp);
	}
	@Test
	public void testDelectCP(){
		service.deleteCP(1);
	}
}
