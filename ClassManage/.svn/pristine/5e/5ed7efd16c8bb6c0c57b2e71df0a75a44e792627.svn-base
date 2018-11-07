package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
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
import com.demo.util.JiaMiPWD;
import com.demo.util.JsonView;

@Controller
@Scope("prototype")
@RequestMapping("/addressBook.do")
public class AddressBookController {
	@Autowired
	private IStudentService service;
	
	@RequestMapping(params = "action=findSomeStudent")
	public ModelAndView findSomeStudent(HttpServletRequest request,ModelMap map,String find_name,int login_id,String find) throws IOException{
		find = new String(find.getBytes("ISO-8859-1"), "UTF-8");
		ArrayList<Student> studentLists = null;
		if(find.equals("")){
			studentLists = service.findAllStudent();
		}else {
			if(find_name.equals("Number"))
				studentLists = service.findSomeStudentByNumber(find);  
			else if (find_name.equals("Sname")) 
				studentLists = service.findSomeStudentBySname(find);
			else if (find_name.equals("Address")) 
				studentLists = service.findSomeStudentByAddress(find);
		}
		 map.put("studentList", studentLists);  
		 int manager=service.findStudentById(login_id).getManager();
		 map.put("manager", manager);
		 map.put("login_id", login_id);
	     return new ModelAndView("addressBook");  
	}
	
	@RequestMapping(params = "action=getStudentInformation")
	public ModelAndView getStudentInformation(HttpServletRequest request,ModelMap map,int id,Student student) throws IOException{
		student=service.findStudentById(id);
		map.put("student", student);
	    return new ModelAndView("getStudentInformation");  
	}
	
	@RequestMapping(params = "action=addStudentView")
	public ModelAndView addStudentView(HttpServletRequest request,ModelMap map,int login_id) throws IOException{
		map.put("login_id", login_id);
	    return new ModelAndView("addStudent");  
	}
	
	
	@RequestMapping(params = "action=addOneStudent")
	public JsonView addOneStudent(HttpServletRequest request,ModelMap model,Student student)throws Exception{
		JsonView view =new JsonView();
		try {
			String pwd = student.getPassword();
			student.setWjm_pwd(pwd);
			pwd = JiaMiPWD.encryptSHA(pwd);
			student.setPassword(pwd);
			service.addOneStudent( student);
			System.out.println("*****addStudent ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=delOne")
	public JsonView delOne(HttpServletRequest request,ModelMap model,int id)throws Exception{
		JsonView view =new JsonView();
		try {
			String photo=service.findStudentById(id).getSphoto();
			System.out.println("delete_id:"+id);
			service.deleteOne(id);
			String path=Thread.currentThread().getContextClassLoader().getResource("").getPath();//获取项目路径
			path = URLDecoder.decode(path,"utf-8").replace("\\", "/");//将【\】转换成【/】
			path = path.substring(1, path.lastIndexOf("/"));//得到除去最后一个【/】的字符串地址
			path = path.substring(0, path.lastIndexOf("/"));//去除项目路径倒数第二个【/】后的字符串获得最终路径
			path = path.substring(0, path.lastIndexOf("/"));//去除项目路径倒数第二个【/】后的字符串获得最终路径
			path += "/images/student_img/"+photo;
			//path="D:/ClassManage/ClassManage/WebContent/images/student_img/"+photo;
			System.out.println(path);
			if(photo=="withoutphoto.png"||photo.equals("withoutphoto.png"))
        		System.out.println(id+"_photo:"+photo);
        	else
        		service.deleteFile(new File(path));
			System.out.println("*****delete ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=modifyStudentView")
	public ModelAndView modifyStudentView(HttpServletRequest request,ModelMap map,int id,Student student) throws IOException{
		student=service.findStudentById(id);
		map.put("student", student);
	    return new ModelAndView("modifyStudent");  
	}
	@RequestMapping(params = "action=modifyOne")
	public JsonView modifyOne(HttpServletRequest request,ModelMap model,Student student)throws Exception{
		JsonView view =new JsonView();
		try {
			String pwd = student.getPassword();
			student.setWjm_pwd(pwd);
			pwd = JiaMiPWD.encryptSHA(pwd);
			student.setPassword(pwd);
			service.modifyOne(student);
			System.out.println("*****modifyStudent ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=modify_photo")
	public ModelAndView modify_photo(HttpServletRequest request,ModelMap map,int login_id,String photo) throws IOException{
		photo=service.findStudentById(login_id).getSphoto();
		map.put("login_id", login_id);
		map.put("photo",photo);
	    return new ModelAndView("modify_photo");  
	}
	

}
