package com.ECT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {
	private int order_id;
	private int publish_id;
	private String user_account_number;
	private int state;
	@Id
	@Column(name="order_id")
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	@Column(name="publish_id")
	public int getPublish_id() {
		return publish_id;
	}
	public void setPublish_id(int publish_id) {
		this.publish_id = publish_id;
	}
	@Column(name="user_account_number")
	public String getUser_account_number() {
		return user_account_number;
	}
	public void setUser_account_number(String user_account_number) {
		this.user_account_number = user_account_number;
	}
	@Column(name="state")
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	

}
