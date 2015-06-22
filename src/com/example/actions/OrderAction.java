package com.example.actions;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.example.businessService.AllService;
import com.example.domain.Order;
import com.example.domain.OrderGoods;
import com.example.domain.Status;
import com.opensymphony.xwork2.ActionContext;
@Controller
@Scope("prototype")
public class OrderAction {
	private Order order;
	private OrderGoods ogs;
	
	private String ogsNum;
	//可能是因为有多个name相同的input提交过来可以组成用逗号隔开的字符串，但是int,double 不行
	private String ogsPrice;
	private String sumPrice;
	private int Order_id;
	private String page;
	
	public void setPage(String page) {
		this.page = page;
	}
	public void setOrder_id(int order_id) {
		Order_id = order_id;
	}
	public String getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(String sumPrice) {
		this.sumPrice = sumPrice;
	}
	public void setOgsNum(String ogsNum) {
		this.ogsNum = ogsNum;
	}
	public void setOgsPrice(String ogsPrice) {
		this.ogsPrice = ogsPrice;
	}
	@Autowired
	private AllService service;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public OrderGoods getOgs() {
		return ogs;
	}
	public void setOgs(OrderGoods ogs) {
		this.ogs = ogs;
	}
	public String submitOrder(){
		String []names=ogs.getName().split(",");
		String [] nums = ogsNum.split(",");
		String [] prices= ogsPrice.split(",");
		List<OrderGoods> list = new ArrayList<OrderGoods>();
		OrderGoods og;
		for(int i=0;i<names.length;i++){
			og = new OrderGoods();
			og.setName(names[i].trim());
			og.setNum(Integer.parseInt(nums[i].trim()));
			og.setPrice(Double.parseDouble(prices[i].trim()));
			og.setOrder(order);
			order.getGoods().add(og);
			list.add(og);
		}
		Status s =  new Status();
		s.setId(1);
		
		order.setSta(s);
		service.addOrder(order);
		for(int i=0;i<names.length;i++)
			service.addOrderGoods(list.get(i));
		
		
		return "submitOrderMessage";
	}
	@Transactional
	public String showAllOrders(){
		try{
			List<Order> allOrders = service.findAllOrder();
			//collection is not associated with any session
			for(int i=0;i<allOrders.size();i++){
				Hibernate.initialize(allOrders.get(i).getGoods());
				Hibernate.initialize(allOrders.get(i).getSta());
			}
			ActionContext.getContext().put("allOrders", allOrders);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return "showAllOrders";
	}
	
	public String changeStatus(){
		service.changeStatus(Order_id);
		if(page!=null)
			return "notAuditedOrder";
		return "changeStatus";
	}
	@Transactional
	public String AuditedOrder(){
		List<Order> auditedOrders = service.findAuditedOrder();
		for(int i=0;i<auditedOrders.size();i++){
			Hibernate.initialize(auditedOrders.get(i).getGoods());
			Hibernate.initialize(auditedOrders.get(i).getSta());
		}
		ActionContext.getContext().put("auditedOrders", auditedOrders);
		return "auditedOrder";
	}
	
	@Transactional
	public String NotAuditedOrder(){
		List<Order> notAuditedOrder = service.findNotAuditedOrder();
		ActionContext.getContext().put("notAuditedOrder", notAuditedOrder);
		for(int i=0;i<notAuditedOrder.size();i++){
			Hibernate.initialize(notAuditedOrder.get(i).getGoods());
			Hibernate.initialize(notAuditedOrder.get(i).getSta());
		}
		return "notAuditedOrder";
	}
	
}
