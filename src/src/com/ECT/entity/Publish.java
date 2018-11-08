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
	private String context;
	private String pricture;
	private float price;
	private String time;
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
	
}
