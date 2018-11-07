package com.demo.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.demo.entity.Student;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
					throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 请求的路径
		String url = request.getServletPath().toString();
		String action=request.getParameter("action");
		HttpSession session = request.getSession();
		Student currentUser = ((Student) session.getAttribute("curr"));
		if (currentUser == null) {
			if (action.contains("logon")) {
				return true;
			}
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
				for(int i=0; i<cookies.length; i++) {
					Cookie cookie = cookies[i];
					if("autoLogin".equals(cookie.getName())){
						
						return true;
					}

				}
			}
			request.setAttribute("error", "error");
			request.getRequestDispatcher("index.jsp").forward(request, response);
//			response.sendRedirect("index.jsp");
			return true;
		}
		return true;
	}
}
