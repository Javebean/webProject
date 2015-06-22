package com.example.domain;

import java.util.HashSet;
import java.util.Set;

public class Status {
	private int id;
	private String sta;
	private Set<Order> orders= new HashSet<Order>();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSta() {
		return sta;
	}
	public void setSta(String sta) {
		this.sta = sta;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
	
	
}
