package com.demo.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.INoticeDao;
import com.demo.entity.Notice;

@Service
public class INoticeServiceImpl implements INoticeService{
	
	@Autowired
	private INoticeDao dao;

	@Override
	public ArrayList<Notice> findAllNotice() {
		// TODO Auto-generated method stub
		ArrayList<Notice> noticeList = dao.findAllNotice();
		return noticeList;
	}

	@Override
	public void addOneNotice(Notice notice) {
		// TODO Auto-generated method stub
		dao.addOneNotice(notice);
		System.out.println("addNoticeService");
	}

	@Override
	public void modifyNotice(Notice notice ) {
		// TODO Auto-generated method stub
		dao.modifyNotice(notice);
	}

	@Override
	public void deleteNotice(int id) {
		// TODO Auto-generated method stub
		dao.deleteNotice(id);
	}

	@Override
	public Notice findAllNoticeByid(int id) {
		// TODO Auto-generated method stub
		return dao.findAllNoticeByid(id);
	}

}
