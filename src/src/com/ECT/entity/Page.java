package com.ECT.entity;

import java.util.List;

public class Page<T> {
	
	private List<T> list;
	private int currentPageNum;     //当前页
	private int prePageNum;			//前一页
	private int nextPageNum;		//下一页
	private int totalPageNum;		//总页数
	private int pagelength;			//本页个数
	
	public Page()
	{
		
	}
	public Page(int pagelength, int currentPageNum) {
		this.pagelength = pagelength;
		this.currentPageNum = currentPageNum;
	}
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
	public void setCount(int count) {//传入总个数，获取总页数，进而得到上一页和下一页
		if (count % pagelength == 0)//
		{
			this.totalPageNum = count / pagelength;
		} else {
			this.totalPageNum = count / pagelength + 1;
		}
		if (currentPageNum > 1)//
		{
			prePageNum = currentPageNum - 1;
		} else {
			prePageNum = 1;
		}
		if (currentPageNum < pagelength)//
		{
			nextPageNum = currentPageNum + 1;
		} else {
			nextPageNum = pagelength;
		}
	}
	public int getPagelength() {
		return pagelength;
	}
	public void setPagelength(int pagelength) {
		this.pagelength = pagelength;
	}
	
}
