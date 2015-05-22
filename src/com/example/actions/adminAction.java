package com.example.actions;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.example.businessService.AllService;
import com.example.domain.admin;
@Controller
@Scope("prototype")
public class adminAction {
	@Autowired
	private AllService service;
	private admin admin;
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public admin getAdmin() {
		return admin;
	}

	public void setAdmin(admin admin) {
		this.admin = admin;
	}

	public String adminValidate(){
		admin ad = service.findadmin(admin.getUsername(),admin.getPassword());
		if(ad==null){
			message="用户名或密码不正确,请联系管理员";
			return "message";
		}
		return "index";
	}
}
/**
 use production;
 create table admin
 (
 	username varchar(100),
 	password varchar(100)
 
 );
 
 
 
 * **/
