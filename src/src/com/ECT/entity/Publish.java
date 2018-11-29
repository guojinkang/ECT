package com.ECT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="publish")
public class Publish {
	private String publishId;
	private String userName;
	private String title;
	private int typeid;
	private String typewant;//求人或帮人
	private String context;
	private String pricture;
	private int state;//状态
	private float price;
	private String time;
	private String pricture2;
	private String pricture3;
	private String pricture4;
	
	@Id
	@Column(name="publish_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public String getPublishId() {
		return publishId;
	}
	public void setPublishId(String publishId) {
		this.publishId = publishId;
	}
	@Column(name="user_account_number") 
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Column(name="publish_titile")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="type_id")
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	@Column(name="publish_content")
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	@Column(name="publish_picture")
	public String getPricture() {
		return pricture;
	}
	public void setPricture(String pricture) {
		this.pricture = pricture;
	}
	@Column(name="publish_price")
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	@Column(name="publish_time")
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPricture2() {
		return pricture2;
	}
	public void setPricture2(String pricture2) {
		this.pricture2 = pricture2;
	}
	public String getPricture3() {
		return pricture3;
	}
	public void setPricture3(String pricture3) {
		this.pricture3 = pricture3;
	}
	public String getPricture4() {
		return pricture4;
	}
	public void setPricture4(String pricture4) {
		this.pricture4 = pricture4;
	}
	
	
	@Column(name="state")
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	@Column(name="type_want")
	public String getTypewant() {
		return typewant;
	}
	public void setTypewant(String typewant) {
		this.typewant = typewant;
	}
	
}
