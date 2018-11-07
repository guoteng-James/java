package com.demo.exception;

import java.lang.reflect.Method;

import org.aopalliance.intercept.MethodInvocation;

import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

public class ControllerMethodInterceptor implements MethodInterceptor {
	


	public Object invoke(MethodInvocation invocation) throws Throwable {
		
		return invocation;
	}

	@Override
	public Object intercept(Object object, Method method, Object[] objects, MethodProxy proxy) throws Throwable {
		// TODO Auto-generated method stub
		return null;
	}
	
}

