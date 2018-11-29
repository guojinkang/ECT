package com.ECT.entity;

import java.util.List;

public class Page<T> {
	
	private List<T> list;
<<<<<<< HEAD
	private int currentPageNum;     //当前页
	private int prePageNum;			//前一页
	private int nextPageNum;		//下一页
	private int totalPageNum;		//总页数
=======
	private int currentPageNum;     //��ǰҳ
	private int prePageNum;			//ǰһҳ
	private int nextPageNum;		//��һҳ
	private int totalPageNum;		//��ҳ��
>>>>>>> 2c25982761223da2a75b7c77cb528f485b2db5cf
	
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getCurrentPageNum() {
		return currentPageNum;
	}
	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}
	public int getPrePageNum() {
		return prePageNum;
	}
	public void setPrePageNum(int prePageNum) {
		this.prePageNum = prePageNum;
	}
	public int getNextPageNum() {
		return nextPageNum;
	}
	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}
	public int getTotalPageNum() {
		return totalPageNum;
	}
	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}
	
}
