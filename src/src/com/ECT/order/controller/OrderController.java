package com.ECT.order.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ECT.entity.Order;
import com.ECT.entity.Publish;
import com.ECT.entity.User;
import com.ECT.order.service.OrderService;
import com.ECT.publish.dao.PublishDaoImpl;
import com.ECT.publish.service.PublishServiceImpl;

@Controller
public class OrderController {
	@Resource
	private OrderService orderService;
	@Resource
	private PublishServiceImpl publicservice;
	
	@RequestMapping(value="/order", method=RequestMethod.POST)
	public String publish(Order order, HttpSession session) {
		User user=(User) session.getAttribute("username");
		Publish publish=(Publish) session.getAttribute("publish");
		order.setPublish_id(Integer.parseInt(publish.getPublishId()));
		order.setUser_account_number(user.getUserName());
		order.setState(1);
		this.orderService.saveDate(order);
		
		publish.setState(1);
		
		publicservice.updatePublish(publish);
		
		return "frameset";
	}
	
	
}

