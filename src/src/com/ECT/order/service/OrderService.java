package com.ECT.order.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.Order;
import com.ECT.entity.Publish;
import com.ECT.order.dao.OrderDaoImpl;

@Service
@Transactional(readOnly=false)
public class OrderService{
	@Resource
	private OrderDaoImpl orderDaoImpl;
	
	public boolean saveDate(Order obj) {
		try {
			this.orderDaoImpl.saveDate(obj);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	

}