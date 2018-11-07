package com.demo.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.demo.entity.Student;
import com.demo.entity.WhoLogin;
import com.demo.services.ILoginService;
import com.demo.services.IStudentService;
import com.demo.util.GetVisitorSystemUtil;
import com.demo.util.JiaMiPWD;
import com.demo.util.JsonView;
import com.demo.util.StochasticUtil;
import com.demo.util.CodeUtil;

@Controller
@Scope("prototype")
@RequestMapping("/logon.do")
public class LogonController {
	@Autowired
	private IStudentService service;
	@Autowired
	private ILoginService loginservice;
	private String n_user_photo;

	@SuppressWarnings("static-access")
	@RequestMapping(params = "action=logon")
	public JsonView logon(HttpServletRequest request,
			HttpServletResponse response, String number, String password,String imageCode) throws Exception {
		JsonView view = new JsonView();
		password = JiaMiPWD.encryptSHA(password);
		String sRand=(String) request.getSession().getAttribute("sRand");
		if (!sRand.equalsIgnoreCase(imageCode)) {
			view.setProperty("result", "codeError");
			view.setProperty("message", "不成功");
		}else 
			if (service.StudentValidate(request, number, password)) {
			GetVisitorSystemUtil information = new GetVisitorSystemUtil();
			WhoLogin pojo = new WhoLogin();
			pojo.setLogin_name(number);
			pojo.setLogin_time(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
			pojo.setLogin_ip(information.getClientIp(request));
			pojo.setLogin_system(information.getRequestSystemInfo(request));
			pojo.setLogin_browser(information.getRequestBrowserInfo(request));
			System.out.println(pojo.getLogin_name()+pojo.getLogin_ip()+pojo.getLogin_browser()+pojo.getLogin_system());
			loginservice.insertOne(pojo);
			view.setProperty("result", "ok");
			view.setProperty("message", "成功");
			System.out.println("******logon ok******");
			String auto=request.getParameter("auto");
			if ("on".equals(auto)) {
				// 设置cookie
				Cookie cookie = new Cookie("autoLogin",number);
				cookie.setMaxAge(3600*24*15);  // cookie时效15天
				response.addCookie(cookie);
			}
			
		} else {
			view.setProperty("result", "error");
			view.setProperty("message", "不成功");
		}
		
		return view;
	}
	
	@RequestMapping(params = "action=main")
	public ModelAndView main(HttpServletRequest request,ModelMap map,Student student) throws IOException{
		int id=service.getLoginId();
		student=service.findStudentById(id);
		map.put("student", student);
		request.getSession().setAttribute("curr", student);
		return new ModelAndView("main");
	}
	
	
	@RequestMapping(params = "action=editSaveUser")
	public JsonView editSaveUser(HttpServletRequest request,ModelMap model,Student student)throws Exception{
		JsonView view =new JsonView();
		try {
			service.editStudent( student);
			System.out.println("*****update_login_user******");
			view.setProperty("result", "succ");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=auto")
	public ModelAndView autoLogin(HttpServletRequest request,HttpServletResponse response,ModelMap map,Student student) throws Exception{
		System.out.println("自动登陆");
    	Cookie[] cookies = request.getCookies();
    	String number = null;
    	if(cookies != null) {
        	for(int i=0; i<cookies.length; i++) {
           		Cookie cookie = cookies[i];
           		if("autoLogin".equals(cookie.getName())){
           			System.out.println(cookie.getValue());
           			number=cookie.getValue();
           			break;
           		}
        	}
    	}
    	System.out.println(number);
		student=service.findSomeStudentByNumber(number).get(0);
    	map.put("student", student);
		return new ModelAndView("main");
	}
	@RequestMapping(params = "action=logout")
	public void autoLogin(HttpServletRequest request,HttpServletResponse response) throws Exception{
    	// 清空session
		request.getSession().invalidate();
		
		// 清空cookie
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = new Cookie(cookies[i].getName(), null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		response.sendRedirect("index.jsp");
	}
	@RequestMapping(params = "action=upload")
	public String upload(HttpServletRequest request,HttpServletResponse response,Integer id,String p_address) throws Exception{
		CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
                request.getSession().getServletContext());
      //检查form中是否有enctype="multipart/form-data"
        if(multipartResolver.isMultipart(request)){
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
           //获取multiRequest 中所有的文件名
            Iterator<?> iter=multiRequest.getFileNames();
            while(iter.hasNext()){
                //一次遍历所有文件
                MultipartFile file=multiRequest.getFile(iter.next().toString());
                if(file!=null){
            		PictureController pic=new PictureController();
            		String saveFile=pic.picUpload(file);
            		n_user_photo=saveFile;
            		if(p_address.equals("student_img")){
        	        	System.out.println("new_photo:"+saveFile);
        	        	String old_photo=service.findStudentById(id).getSphoto();
        	        	System.out.println(n_user_photo);
        	        	Student student=new Student();
        	        	student.setId(id);
        	        	student.setSphoto(n_user_photo);
        	        	service.modifyStudentPhoto(student);
        	        }
                }
                 
            }
           
        }
		return "/success";
		
	}
}
