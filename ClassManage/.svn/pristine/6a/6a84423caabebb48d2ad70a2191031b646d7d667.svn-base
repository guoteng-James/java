package com.demo.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.entity.Student;
import com.demo.services.IStudentService;
import com.demo.util.JiaMiPWD;
import com.demo.util.JsonView;

import sun.print.resources.serviceui;

@Controller
@Scope("prototype")
@RequestMapping("/pwd.do")
public class PwdController {
	@Autowired
	private IStudentService service;
	@RequestMapping(params = "action=checkPwd")
	public JsonView checkPwd(String pwd,int id) throws Exception {
		JsonView view = new JsonView();
		String old_pwd=service.findStudentById(id).getPassword();
		pwd = JiaMiPWD.encryptSHA(pwd);
		if(old_pwd.equals(pwd)||old_pwd==pwd){
			view.setProperty("result", "ok");
			view.setProperty("message", "√");
			System.out.println("*****modifypwd right*****");
		}else{
			view.setProperty("result", "error");
			view.setProperty("message", "×");
		}
		return view;
	}
	
	@RequestMapping(params = "action=modify_pwd")
	public JsonView modify_pwd(String pwd,int id,HttpServletRequest request,HttpServletResponse response) throws Exception {
		String wjm = pwd;
		pwd = JiaMiPWD.encryptSHA(pwd);
		JsonView view = new JsonView();
		System.out.println("modify update");
		Student student=new Student();
		student.setPassword(pwd);
		student.setWjm_pwd(wjm);
		student.setId(id);
		try {
			service.modify_pwd(student);
			view.setProperty("result", "ok");
			view.setProperty("message", "密码修改成功，请重新登陆！");
			// 清空session
			request.getSession().invalidate();
			
			// 清空cookie
			Cookie[] cookies = request.getCookies();
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = new Cookie(cookies[i].getName(), null);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			System.out.println("*****modifypwd right*****");
		} catch (Exception e) {
			view.setProperty("result", "error");
			view.setProperty("message", "密码修改失败");
		}
		return view;
	}

}
