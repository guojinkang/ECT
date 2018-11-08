package com.ECT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//@Entity
//@Table(name="user")
	@Entity
	@Table(name="user")
	public class User {
		private String userName;
		private String passWord;
		private String icon;
		private String name;
		private String introduction;
		private String stid;
		private String major;
		private String email;
		@Id
		@Column(name="user_account_number")
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		@Column(name="user_password")
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		@Column(name="user_icon")
		public String getIcon() {
			return icon;
		}
		public void setIcon(String icon) {
			this.icon = icon;
		}
		@Column(name="user_name")
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		@Column(name="user_introduction")
		public String getIntroduction() {
			return introduction;
		}
		public void setIntroduction(String introdction) {
			this.introduction = introdction;
		}
		@Column(name="user_stid")
		public String getStid() {
			return stid;
		}
		public void setStid(String stid) {
			this.stid = stid;
		}
		@Column(name="user_major")
		public String getMajor() {
			return major;
		}
		public void setMajor(String major) {
			this.major = major;
		}
		@Column(name="user_email")
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
	
}
