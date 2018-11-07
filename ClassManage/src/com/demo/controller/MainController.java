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

import com.demo.entity.Student;
import com.demo.services.IStudentService;

@Controller
@Scope("prototype")
@RequestMapping("/main.do")
public class MainController {
	@Autowired
	private IStudentService service;
	
	@RequestMapping(params = "action=login_information")
	public ModelAndView login_information(HttpServletRequest request,ModelMap map,Student student,int login_id) throws IOException{
		student=service.findStudentById(login_id);
		map.put("student", student);
		return new ModelAndView("login_information");
	}
	
	@RequestMapping(params = "action=addressBook")
	public ModelAndView addressBook(HttpServletRequest request,ModelMap map,int login_id) throws IOException{
		 ArrayList<Student> studentLists = service.findAllStudent();  
		 map.put("studentList", studentLists);  
		 int manager=service.findStudentById(login_id).getManager();
		 map.put("manager", manager);
		 map.put("login_id", login_id);
	     return new ModelAndView("addressBook");  
	}
	
	@RequestMapping(params = "action=modify_password")
	public ModelAndView modify_password(HttpServletRequest request,ModelMap map,int login_id) throws IOException{
		map.put("login_id", login_id);
		return new ModelAndView("modify_password");
	}

}
