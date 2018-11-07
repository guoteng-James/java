package com.demo.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.ILoginDao;
import com.demo.entity.WhoLogin;

@Service
public class ILoginServiceImpl implements ILoginService{
	
	@Autowired
	private ILoginDao dao;

	@Override
	public void insertOne(WhoLogin pojo) {
		// TODO Auto-generated method stub
		System.out.println("==================insert start==========================");
		dao.insertOne(pojo);
		System.out.println("==================insert ok==========================");
	}

	

}
