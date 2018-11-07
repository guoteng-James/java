package com.demo.services;

import java.util.ArrayList;

import com.demo.entity.Notice;

public interface INoticeService {
	public ArrayList<Notice> findAllNotice();
	public Notice findAllNoticeByid(int id);
	public void addOneNotice(Notice notice);;
	public void modifyNotice(Notice notice);
	public void deleteNotice(int id);

}
