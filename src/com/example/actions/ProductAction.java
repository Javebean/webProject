package com.example.actions;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.ServletActionRedirectResult;
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
	public String showall(){
		User uu = (User) ActionContext.getContext().getSession().get("user");
		int userid = uu.getId();
		List<Product> li = service.findAll(userid);
		ActionContext ac = ActionContext.getContext();
		ac.put("listall", li);
		return "showall";
	}
	public String addProduct(){
		Product p = new Product();
		p.setName(product.getName());
		p.setProcessor(product.getProcessor());
		p.setNet(product.getNet());
		p.setSize(product.getSize());
		p.setRom(product.getRom());
		p.setCamera(product.getCamera());
		p.setSimcart(product.getSimcart());
		p.setPrice(product.getPrice());
		service.add(p);
		message="添加成功";
		return "message";
	}
	public String buyProduct(){
		Product p = new Product();
		p.setName(product.getName());
		p.setProcessor(product.getProcessor());
		p.setNet(product.getNet());
		p.setSize(product.getSize());
		p.setRom(product.getRom());
		p.setCamera(product.getCamera());
		p.setSimcart(product.getSimcart());
		p.setPrice(product.getPrice());
		p.setUser((User)ActionContext.getContext().getSession().get("user"));
		service.add(p);
		message="购买成功";
		return "buyMessage";
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
		message="修改成功";
		return "message";
	}
	
}
