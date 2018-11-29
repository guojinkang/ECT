package com.ECT.list.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ECT.entity.Page;
import com.ECT.entity.Publish;
import com.ECT.entity.Select;
import com.ECT.entity.User;
import com.ECT.list.service.ListService;



@Controller
public class ListController {
	@Resource
	private ListService listService;

	

	@RequestMapping("/indexlist")
	public String findAll(HttpServletRequest request){
		int num=0;
		List<Integer> count=new ArrayList();
		Page page=new Page();
		String pageNum = request.getParameter("pageNum");
		String search = request.getParameter("search");
		String type = request.getParameter("type");
		Select sel = new Select();
		//type和search都没有值的情况
		if(search.equals("")&type.equals("")) {
			int a=listService.totalCount();
			request.setAttribute("count", a);
			count=listService.showPageNum(a);          //把页码存入count
			request.setAttribute("totlecount", count);
			page.setTotalPageNum(listService.totalPageNum(a));
			num=Integer.parseInt(pageNum);
			if(num>page.getTotalPageNum()) {
				num=page.getTotalPageNum();
			}
			page.setCurrentPageNum(num);
			page.setList(listService.dividePage(num, 10));
		}
		//type有值的情况
		if(search.equals("")&type.length()>0) {
			if(type.equals("求人")) {
				sel.setOne("selected");
				sel.setTwo("");
			}
			if(type.equals("帮人")) {
				sel.setOne("");
				sel.setTwo("selected");
			}
			request.setAttribute("select", sel);
			int a=listService.typeCount(type);
			request.setAttribute("count", a);
			count=listService.showPageNum(a);
			request.setAttribute("totlecount", count);
			page.setTotalPageNum(listService.totalPageNum(a));
			num=Integer.parseInt(pageNum);
			if(num>page.getTotalPageNum()) {
				num=page.getTotalPageNum();
			}
			page.setCurrentPageNum(num);
			page.setList(listService.typeDividePage(num, 10, type));
		}
		//search有值的情况
		if(type.equals("")&search.length()>0) {
			int a = listService.nameCount(search);
			request.setAttribute("count", a);
			count=listService.showPageNum(a);
			request.setAttribute("totlecount", count);
			page.setTotalPageNum(listService.totalPageNum(a));
			num=Integer.parseInt(pageNum);
			if(num>page.getTotalPageNum()) {
				num=page.getTotalPageNum();
			}
			page.setCurrentPageNum(num);
			page.setList(listService.nameDividePage(num, 10, search));
		}
		//type和search都有值的情况
		if(search.length()>0&type.length()>0) {
			if(type.equals("求人")) {
				sel.setOne("selected");
				sel.setTwo("");
			}
			if(type.equals("帮人")) {
				sel.setOne("");
				sel.setTwo("selected");
			}
			request.setAttribute("select", sel);
			int a = listService.selectCount(type, search);
			request.setAttribute("count", a);
			count=listService.showPageNum(a);
			request.setAttribute("totlecount", count);
			page.setTotalPageNum(listService.totalPageNum(a));
			
			num=Integer.parseInt(pageNum);
			if(num>page.getTotalPageNum()) {
				num=page.getTotalPageNum();
			}
			page.setCurrentPageNum(num);
			page.setList(listService.selectDividePage(num, 10, type, search));
			
		}
		if(num<=1) {
			page.setPrePageNum(1);
		}
		else {
			page.setPrePageNum(num-1);
		}
		if(num<page.getTotalPageNum()) {
			page.setNextPageNum(num+1);
		}
		else {
			page.setNextPageNum(num);
		}
		request.setAttribute("publishall", page.getList());
		request.setAttribute("page", page);
		request.setAttribute("type", type);
		request.setAttribute("search", search);
		return "index-list";
	}
	
	@RequestMapping(value="/Searchtype",method = RequestMethod.GET)
	public String findByType(HttpServletRequest request) {
		int typeid = Integer.parseInt(request.getParameter("searchtype"));
		List<Publish> list1 = listService.findByType(typeid);
		request.setAttribute("publishall", list1);
		return "index-list";
	}
}