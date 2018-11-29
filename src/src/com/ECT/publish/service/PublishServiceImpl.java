package com.ECT.publish.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.query.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ECT.entity.Publish;
import com.ECT.entity.User;
import com.ECT.publish.dao.PublishDaoImpl;
import com.ECT.user.dao.UsersDaoImpl;
import com.ECT.util.BaseDao;

@Service
@Transactional(readOnly = false)
public class PublishServiceImpl extends BaseDao<Publish> {

	@Resource
	private PublishDaoImpl publishDaoImpl;
	@Resource
	private UsersDaoImpl usersDaoImpl;

	// 获取任务信息
	public Publish findOnepublish(String id) {
		return this.publishDaoImpl.getone(id);
	}

	// 获取任务发布者信息
	public User findOneuser(String id) {
		return this.usersDaoImpl.getone(id);
	}

	// 获取用户的历史记录
	public List<Publish> history(String username, int page) {
		return publishDaoImpl.history(username, page);
	}

	// 根据用户查询任务
	public List<Publish> finduserpbs(Integer page, Integer rows, String username) {
		return this.publishDaoImpl.userpage(page, rows, username);
	}

	// 更新问题
	public void updatePublish(Publish publish) {
		publishDaoImpl.updates(publish);
	}

	// 用户任务删除
	public void deletePb(String publishId) {

		String hql = "delete from Publish where publishId =?0";
		Query query = this.getSession().createQuery(hql);
		query.setParameter(0, publishId);
		query.executeUpdate();
	}
	//获取任务个数
	public int getnum(String username)
	{
		return publishDaoImpl.getInt("select count(*) from Publish where userName=?0 and state=?1", username,1);
	}
}