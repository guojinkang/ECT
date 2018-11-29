package com.ECT.list.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ECT.entity.Publish;
import com.ECT.list.dao.ListDao;


@Service
@Transactional(readOnly=false)
public class ListService {
	@Resource
	private ListDao listDao;
	
	public List<Publish> findByType(int typeid){
		return listDao.findByType(typeid);
	}
	public boolean Publish(Publish publish) {
		try {
			this.listDao.savePublish(publish);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	public List<Integer> showPageNum(int a ){
		int b;
		int c;
		List<Integer> count=new ArrayList();
		if(a>=10) {
			b=a%10;
			c=a/10;
			if(b>0) {
				c=c+1;
			}
			for(int i=1;i<=c;i++) {
				count.add(i);
			}
			
		}
		if(a<10) {
			c=1;
			count.add(1);
			
		}
		return count;
	}
	public int totalPageNum(int a) {
		int b;
		int c=a/10;
		if(a>=10) {
			b=a%10;
			if(b>0) {
				c=c+1;
			}
		}
		if(a<10) {
				c=1;
		}
		
		return c;
	}
	
	public Integer totalCount() {
		return listDao.totalCount();
	}
	public List<Publish> dividePage(Integer a, Integer b){
		return listDao.dividePage(a, b);
	}
	public Integer typeCount(String b) {
		return listDao.typeCount(b);
	}
	public List<Publish> typeDividePage(Integer m, Integer n, String b){
		return listDao.typeDividePage(m, n, b);
	}
	public Integer nameCount(String c) {
		return listDao.nameCount(c);
	}
	public List<Publish> nameDividePage(Integer m, Integer n, String c){
		return listDao.nameDividePage(m, n, c);
	}
	public Integer selectCount(String b, String c) {
		return listDao.selectCount(b, c);
	}
	public List<Publish> selectDividePage(Integer m, Integer n, String b, String c){
		return listDao.selectDividePage(m, n, b, c);
	}
}
