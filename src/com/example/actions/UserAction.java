package com.example.actions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.example.businessService.AllService;
import com.example.domain.User;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Scope("prototype")
public class UserAction {
	@Autowired
	private AllService service;
	private User user;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String register(){
		User use = service.find(user.getUsername());
		System.out.println(user.getUsername()+"---");
		if(use!=null){
			message="用户名已存在";
			return "message";
		}
		User u = new User();
		u.setUsername(user.getUsername());
		u.setPassword(user.getPassword());
		u.setEmail(user.getEmail());
		service.adduser(u);
		message="注册成功";
		return "message";
	}
	
	public String load(){
		User user2 = service.find(user.getUsername(), user.getPassword());
		if(user2==null){
			message="用户名或密码不正确";
			return "message";
		}
		ActionContext.getContext().getSession().put("user", user2);
		
		message="登录成功";
		return "message";
	}
	
	public String unload(){
		ActionContext.getContext().getSession().remove("user");
		
		message="注销成功";
		return "message";
	}
	
}

/**
 	use production;
 	create table user
 	(
 		username varchar(100) primary key,
 		password varchar(100) not null,
 		email varchar(100)
 	
 	);
 
  
 * */
