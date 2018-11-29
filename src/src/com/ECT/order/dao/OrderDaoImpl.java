package com.ECT.order.dao;

import org.springframework.stereotype.Repository;

import com.ECT.entity.Order;
import com.ECT.util.BaseDao;

@Repository
public class OrderDaoImpl extends BaseDao<Order> {
	public void saveDate(Object obj) throws Exception{
		this.save(obj);
	}
	
}
