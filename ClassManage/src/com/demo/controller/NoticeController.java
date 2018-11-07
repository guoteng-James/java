package com.demo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.entity.Notice;
import com.demo.services.INoticeService;
import com.demo.services.IStudentService;
import com.demo.util.JsonView;

@Controller
@Scope("prototype")
@RequestMapping("/notice.do")

public class NoticeController {
	@Autowired
	private INoticeService service;
	@Autowired
	private IStudentService Sservice;

	@RequestMapping(params = "action=notice")
	public ModelAndView notice(HttpServletRequest request,ModelMap map,int login_id) throws IOException{
		 ArrayList<Notice> noticeLists =  service.findAllNotice();
		 map.put("noticeList", noticeLists);  
		 int manager=Sservice.findStudentById(login_id).getManager();
		 map.put("manager", manager);
		 map.put("login_id", login_id);
	     return new ModelAndView("notice");  
	}
	
	@RequestMapping(params = "action=toAdd")
	public ModelAndView toAdd(HttpServletRequest request,ModelMap map,int login_id) throws IOException{
		System.out.println("toAdd");
		 map.put("login_id", login_id);
	     return new ModelAndView("addNotice");  
	}
	
	@RequestMapping(params = "action=toModify")
	public ModelAndView toModify(HttpServletRequest request,ModelMap map,int login_id,Notice notice) throws IOException{
		System.out.println("toModify");
		 notice=service.findAllNoticeByid(login_id);
		map.put("notice", notice);
	    return new ModelAndView("modify_Notice");  
	}
	
	@RequestMapping(params = "action=addOneNotice")
	public JsonView addOneStudent(HttpServletRequest request,ModelMap model,Notice notice)throws Exception{
		System.out.println("add start");
		JsonView view =new JsonView();
		try {
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
			String str_date1 = formatter.format(currentTime); //将日期时间格式化
			notice.setCreateTime(str_date1.toString());
			service.addOneNotice( notice);
			System.out.println("*****addNotice ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=modifyNotice")
	public JsonView modifyOne(HttpServletRequest request,ModelMap model,Notice notice)throws Exception{
		JsonView view =new JsonView();
		try {
			service.modifyNotice(notice);
			System.out.println("*****modifyNotice ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=deleteNotice")
	public JsonView deleteAllNotice(HttpServletRequest request,int id)throws Exception{
		System.out.println("id"+id);
		JsonView view = new JsonView();
		try{
			service.deleteNotice(id);
			System.out.println("*****deleteNotice ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
	}
	
}
