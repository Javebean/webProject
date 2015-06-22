package com.example.actions;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.example.businessService.AllService;
import com.example.domain.Cproductions;
import com.example.domain.Product;
import com.example.domain.User;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Scope("prototype")
public class ProductAction {
	@Autowired
	private AllService service;
	
	private String cartDelete;
	private String cartClearing;
	public void setCartDelete(String cartDelete) {
		this.cartDelete = cartDelete;
	}
	public void setCartClearing(String cartClearing) {
		this.cartClearing = cartClearing;
	}

	private String goods;
	private String sumPrice;
	public void setGoods(String goods) {
		this.goods = goods;
	}
	public void setSumPrice(String sumPrice) {
		this.sumPrice = sumPrice;
	}
	public String getSumPrice() {
		return sumPrice;
	}

	private Product product;
	private String message;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String shoppingCart(){
		User uu = (User) ActionContext.getContext().getSession().get("user");
		int userid = uu.getId();
		List<Product> li = service.findAll(userid);
		ActionContext ac = ActionContext.getContext();
		ac.put("listall", li);
		return "shoppingCart";
	}
	

	
	public String addCart(){
		User us = (User) ActionContext.getContext().getSession().get("user");
		Product p = service.findByName(product.getName(),us.getId());
		if(p!=null){
			service.updateCart(Double.valueOf(product.getPrice()), product.getName(),us.getId());
			return "addCart";
		}
		
		product.setUser(us);
		product.setNumber(1);
		product.setTotalPrice(Double.parseDouble(product.getPrice()));
		service.add(product);
		return "addCart";
	}
	public String operateCart(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		String goodName[] = goods.split(",");
		int len = goodName.length;
		
		if(cartClearing==null){//click deleteCart
			for(int i=0;i<len;i++){
				service.del(goodName[i].trim(),u.getId());
			}
			return "shoppingCart";
		}else{
			List<Product> list = new ArrayList<Product>();
			for(int i=0;i<len;i++){
				Product p = service.findByName(goodName[i].trim(), u.getId());
				list.add(p);
			}
			ActionContext.getContext().put("listall", list);
			return "goOrder";
		}
	}

	public String load(){
		
		return "index";
	}
	
	public String updateUI(){
		
		List<Cproductions> li = service.showAllCP();
		ActionContext ac = ActionContext.getContext();
		ac.put("listall", li);
		return "updateUI";
	}
	
	public String updatePro(){
		Product p = new Product();
		p.setName(product.getName());
		p.setProcessor(product.getProcessor());
		p.setNet(product.getNet());
		p.setSize(product.getSize());
		p.setRom(product.getRom());
		p.setCamera(product.getCamera());
		p.setSimcart(product.getSimcart());
		p.setPrice(product.getPrice());
		//p.setUser_id(product.getUser_id());
	//	System.out.println(name+processor+net+size+rom+camera+simcart+price);
	
		service.update(p);
	//	id = new String(id.getBytes("iso8859-1"),"UTF-8");
	//	System.out.println(id);
		message="ÐÞ¸Ä³É¹¦";
		return "message";
	}
	
}
