package com.ECT.publish.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ECT.entity.Page;
import com.ECT.entity.Publish;
import com.ECT.entity.User;
import com.ECT.list.service.ListService;
import com.ECT.publish.service.PublishServiceImpl;

@Controller
public class PublishController {
	@Resource
	private PublishServiceImpl publishServiceImpl;

	@Resource
	private ListService listService;

	@RequestMapping(value = "/onepublish")
	public String getpublish(HttpServletRequest request, HttpSession session) {

		String id = request.getParameter("publishid");
		Publish publish=publishServiceImpl.findOnepublish(id);
		session.setAttribute("publish", publish);
		session.setAttribute("user",
				publishServiceImpl.findOneuser(publish.getUserName()));
		return "frameset";
	}


	@RequestMapping(value = "/publish", method = RequestMethod.POST)
	public String publish(Publish publish, HttpSession session, HttpServletRequest request) {

		
		User user = (User) session.getAttribute("username");
		publish.setUserName(user.getUserName());
		

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = (String) df.format(new Date());

		publish.setTime(time);
		this.listService.Publish(publish);
		
		return "redirect:/onepublish?publishid="+publish.getPublishId();
	}
	//用户查询历史任务
	@RequestMapping(value="/histroy_order")
	public String pushorder(HttpServletRequest request,HttpSession session)
	{
		String username=((User)session.getAttribute("username")).getUserName();
		int pagenum=Integer.parseInt(request.getParameter("pagenum"));
		Page<Publish> page=new Page<Publish>();
		page.setCurrentPageNum(pagenum);
		page.setPagelength(5);
		int count=publishServiceImpl.getnum(username);
		page.setCount(count);
		if(pagenum>page.getTotalPageNum())
		{
			pagenum=page.getTotalPageNum();
			page.setCurrentPageNum(pagenum);
		}
		
		if(pagenum==page.getTotalPageNum()&&(count/page.getTotalPageNum()!=0))
		{
			page.setPagelength(count%page.getTotalPageNum());
		}
		
		page.setList(publishServiceImpl.history(username, pagenum));
		request.setAttribute("page", page);
		request.setAttribute("count", count);
		return "Personal_information_fb";
	}
	
	//根据用户查询历史任务
		@RequestMapping(value="/userpublishs", method = RequestMethod.GET)
		public String getuserpbs(HttpServletRequest request,HttpSession session) {
			String name=request.getParameter("publishname");
			Integer page=1;
			Integer rows=5;
			session.setAttribute("page", page);
			session.setAttribute("userpbname",name);
			session.setAttribute("userpublish", this.publishServiceImpl.finduserpbs(page,rows,name));
			return "user-fb";
		}
		
		//分页显示用户历史任务
		@RequestMapping(value="/userpublishsbypage", method = RequestMethod.GET)
		public String getuserpbsbypage(HttpServletRequest request,HttpSession session) {
			String name=(String) session.getAttribute("userpbname");
			Integer page=Integer.parseInt(request.getParameter("pagenum"));
			Integer rows=5;
			session.setAttribute("page", page);
			session.setAttribute("userpublish", this.publishServiceImpl.finduserpbs(page,rows,name));
			return "user-fb";
		}
		//删除任务
				@RequestMapping(value="/deletePb")
				public String deletePb(Publish publish,HttpServletRequest request,HttpSession session) {
				  
					String id=request.getParameter("publishname");
					this.publishServiceImpl.deletePb(id);
					return "flush";
				}
		
	@RequestMapping(value="/release")
	public String tishi(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			return"release";
		}else {
			return"login";
		}
		
	}
	
	@RequestMapping(value="chat")
	public String tishi1(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			return"#";
		}else {
			return"login";
		}
	}
	
	

}