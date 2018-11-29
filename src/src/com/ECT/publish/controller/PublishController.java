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

		String id = request.getParameter("publishname");
		session.setAttribute("publish", publishServiceImpl.findOnepublish(id));
		session.setAttribute("user",
				publishServiceImpl.findOneuser(publishServiceImpl.findOnepublish(id).getUserName()));
		return "frameset";
	}

	@RequestMapping(value = "/uploadfile")
	public String uploadfile(@RequestParam(value="files1",required=false) MultipartFile file,HttpServletRequest request) {
		System.out.println(file);
		System.out.println(file.getContentType());
		return "release";
	}
//	@RequestMapping(value = "/uploadfile")
//	public String uplaodfile(HttpServletRequest request)
//	{
//		MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
//        MultipartHttpServletRequest multipartRequest = resolver.resolveMultipart(request);
//
//		MultipartFile file = multipartRequest.getFile("fileToUpload");
//		System.out.println(file);
//		return "jj";
//		System.out.println(file.getOriginalFilename());
//		System.out.println(file.getName());
//		
//	}
//	@RequestMapping(value = "/uploadfile")
//	public String uplaodfile(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, HttpServletResponse response)
//	{
//		 
//		 System.out.println(file.getName());
//		 System.out.println(file.getContentType());
//		 return "jj";
//		
//		
//	}
//	public void uploadfile(HttpServletRequest request,HttpServletResponse response)
//	{
//		 //获取服务器中保存文件的路径
//		  String path = "E:\\\\";
//		 
//		   //获取解析器  
//		     CommonsMultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
//		     
//		     //判断是否是文件  
//		     if(resolver.isMultipart(request)){  
//		         //进行转换  
//		         MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)(request);  
//		         //获取所有文件名称  
//		         Iterator<String> it = multiRequest.getFileNames();
//		         System.out.println(multiRequest.getFileMap().keySet().size());
//		         System.out.println(it.hasNext());
//		         while(it.hasNext()){  
//		             //根据文件名称取文件  
//		             MultipartFile file = multiRequest.getFile(it.next());
//		            
//		             String fileName = file.getOriginalFilename();  
//		             String localPath = path + fileName;  
//		             //创建一个新的文件对象，创建时需要一个参数，参数是文件所需要保存的位置
//		             File newFile = new File(localPath);  
//		             //上传的文件写入到指定的文件中  
//		             try {
//						file.transferTo(newFile);
//					} catch (IllegalStateException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}  
//		         } 
//		     }
//	}

	@RequestMapping(value = "/publish", method = RequestMethod.POST)
	public String publish(Publish publish, HttpSession session, HttpServletRequest request) {

		
		User user = (User) session.getAttribute("username");
		publish.setUserName(user.getUserName());
		

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = (String) df.format(new Date());

		publish.setTime(time);
		this.listService.Publish(publish);
		
		return "index";
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
		//个人信息查询历史任务
		@RequestMapping(value="/userpublishss", method = RequestMethod.GET)
		public String getuserpbss(HttpServletRequest request,HttpSession session) {
			String name=request.getParameter("publishnamee");
			Integer page=1;
			Integer rows=5;
			session.setAttribute("page", page);
			session.setAttribute("userpbname",name);
			session.setAttribute("userpublish", this.publishServiceImpl.finduserpbs(page,rows,name));
			return "Personal_information_fb";
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