package com.ECT.list.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.ECT.entity.Publish;
import com.ECT.util.BaseDao;

@Repository
public class ListDao extends BaseDao<Publish>{
	
	
	//发布时将发布信息存入数据库
		public void savePublish(Publish publish) throws Exception{
			this.save(publish);
		}
		
		public List<Publish> findAll(){
			 List<Publish>list = this.list("from Publish");
			 return list;
		 }
		
		public List<Publish> findByName(String name){
			List<Publish> list = this.findbyName(name);
			return list;
		}
		
		public List<Publish> findByType(int typeid){
			List<Publish> list = this.list("from Publish where typeid=?0",typeid);
			return list;
		}
		
		
		public Integer totalCount() {
			String hql = "select count(*) from Publish";
			Integer a=this.getInt(hql);
			return a;
		}
		
		public List<Publish> dividePage(Integer m, Integer n){
			List<Publish> list = this.page("from Publish", m, n);
			return list;
		}
		public Integer typeCount(String b) {
			String hql="select count(*) from Publish where type=?0";
			Integer a = this.getInt(hql,b);
			return a;
		}
		public List<Publish> typeDividePage(Integer m, Integer n, String b){
			List<Publish> list = this.page("from Publish where type=?0", m, n, b);
			return list;
		}
		public Integer nameCount(String c) {
			String hql="select count(*) from Publish where title like ?0";
			c="%"+c+"%";
			Integer a = this.getInt(hql,c);
			return a;
		}
		public List<Publish> nameDividePage(Integer m, Integer n, String c){
			c="%"+c+"%";
			List<Publish> list = this.page("from Publish where title like ?0", m, n, c);
			return list;
			
		}
		public Integer selectCount(String b, String c) {
			String hql="select count(*) from Publish where type=?0 and title like ?1";
			c="%"+c+"%";
			Integer a = this.getInt(hql, b,c);
			return a;
		}
		public List<Publish> selectDividePage(Integer m, Integer n, String b, String c){
			c="%"+c+"%";
			List<Publish> list = this.page("from Publish where type=?0 and title like ?1", m, n, b, c);
			return list;
		}
}
