package com.example.actions;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.example.businessService.AllService;
import com.example.domain.Cproductions;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Scope("prototype")
public class CproductionsAction {
	@Autowired
	private AllService service;
	
	private Cproductions cp;
	private int deid;
	
	public void setDeid(int deid) {
		this.deid = deid;
	}
	
	public int getDeid() {
		return deid;
	}

	public Cproductions getCp() {
		return cp;
	}
	public void setCp(Cproductions cp) {
		this.cp = cp;
	}

	public String showallCP(){
		List<Cproductions> list = service.showAllCP();
		ActionContext.getContext().put("listall", list);
		return "showall";
	}
	
	public String addCProduct(){
		service.addCP(cp);
		return showallCP();
	}
	
	public String updatePro(){
		service.updateCP(cp);
		return showallCP();
	}
	public String deleteUI(){
		List<Cproductions> list = service.showAllCP();
		ActionContext ac = ActionContext.getContext();
		ac.put("listall", list);
		return "delete";
	}
	
	public String deleteProduct(){
		service.deleteCP(deid);
		return deleteUI();
	}
}
