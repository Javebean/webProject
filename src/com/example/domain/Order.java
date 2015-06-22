package com.example.domain;

import java.util.HashSet;
import java.util.Set;


public class Order {
	private int id;
	private String location;//所在地区
	//省份 城市 县区 街道
	private String province;
	private String city;
	private String counties;
	private String street;
	private String zipcode;
	private String addressee;
	private String phoneNum;
	private double sumPrice;
	private Set<OrderGoods> goods = new HashSet<OrderGoods>();
	private Status sta;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounties() {
		return counties;
	}
	public void setCounties(String counties) {
		this.counties = counties;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddressee() {
		return addressee;
	}
	public void setAddressee(String addressee) {
		this.addressee = addressee;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Set<OrderGoods> getGoods() {
		return goods;
	}
	public void setGoods(Set<OrderGoods> goods) {
		this.goods = goods;
	}
	
	public double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}
	public Status getSta() {
		return sta;
	}
	public void setSta(Status sta) {
		this.sta = sta;
	}
	
	

	
	
	
}
