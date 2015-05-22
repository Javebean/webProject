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
		Cproductions cpro = 
				new Cproductions(cp.getName(), cp.getProcessor(), 
						cp.getNet(), cp.getSize(), cp.getRom(), cp.getCamera(),
						cp.getSimcart(), cp.getPrice());
		service.addCP(cpro);
		return showallCP();
	}
	
	public String updatePro(){
		Cproductions cpr = new Cproductions(cp.getName(), cp.getProcessor(), cp.getNet(), cp.getSize(), cp.getRom(), cp.getCamera(), cp.getSimcart(), cp.getPrice());
		service.updateCP(cpr);
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
