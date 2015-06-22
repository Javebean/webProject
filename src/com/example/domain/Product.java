package com.example.domain;


//	insert into products values(0,"a","a","a","a","a","a","a","a",1,5,1000);
public class Product {
	private int id;
	private String name;
	private String processor;
	private String net;
	private String size;
	private String rom;
	private String camera;
	private String simcart;
	private String price;
	private User user;
	private int number;
	private double totalPrice;
	
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
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
	public String getProcessor() {
		return processor;
	}
	public void setProcessor(String processor) {
		this.processor = processor;
	}
	public String getNet() {
		return net;
	}
	public void setNet(String net) {
		this.net = net;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getRom() {
		return rom;
	}
	public void setRom(String rom) {
		this.rom = rom;
	}
	public String getCamera() {
		return camera;
	}
	public void setCamera(String camera) {
		this.camera = camera;
	}
	public String getSimcart() {
		return simcart;
	}
	public void setSimcart(String simcart) {
		this.simcart = simcart;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Product(String name, String processor, String net, String size,
			String rom, String camera, String simcart, String price) {
		super();
		this.name = name;
		this.processor = processor;
		this.net = net;
		this.size = size;
		this.rom = rom;
		this.camera = camera;
		this.simcart = simcart;
		this.price = price;
	}
	public Product() {
	}
	
	
}
