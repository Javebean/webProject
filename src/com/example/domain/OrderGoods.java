package com.example.domain;

public class OrderGoods {
	private int id;
	private String name;
	private int num;
	private double price;
	private Order order;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OrderGoods [id=" + id + ", name=" + name + ", num=" + num
				+ ", price=" + price + ", order=" + order + "]";
	}
	
	
}
