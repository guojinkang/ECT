package com.ECT.publish.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ECT.entity.Publish;
import com.ECT.entity.User;
import com.ECT.publish.dao.PublishDaoImpl;
import com.ECT.user.dao.UsersDaoImpl;

@Service
@Transactional(readOnly=false)
public class PublishServiceImpl {
	
	@Resource
	private PublishDaoImpl publishDaoImpl;
	@Resource
	private UsersDaoImpl usersDaoImpl;
	
	//获取任务信息
	public Publish findOnepublish(String id){
		return this.publishDaoImpl.getone(id);
	}	
	//获取任务发布者信息
	public User findOneuser(String id){
		return this.usersDaoImpl.getone(id);
	}	
	//根据用户查询任务
		public List<Publish> finduserpbs(Integer page,Integer rows,String username){
			return this.publishDaoImpl.userpage(page,rows,username);
		}	
}