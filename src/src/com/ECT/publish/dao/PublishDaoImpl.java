package com.ECT.publish.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ECT.entity.Publish;
import com.ECT.util.BaseDao;

@Repository
public class PublishDaoImpl extends BaseDao<Publish> {
	
	//根据id获取任务信息
		public Publish getone(String id)
		{
			Publish p=(Publish) this.getById(Publish.class, id);
			return p;
		}
		//查看用户历史任务
		public List<Publish> userpage(Integer page,Integer rows,String username){
	        return this.page("from Publish where userName=?0", page, rows,username);
	    }
}
