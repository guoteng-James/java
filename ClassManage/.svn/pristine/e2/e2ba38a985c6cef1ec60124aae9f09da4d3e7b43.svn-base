package com.demo.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.IPhotoDao;
import com.demo.entity.Photo;

@Service
public class IPhotoServiceImpl implements IPhotoService {
	@Autowired
	private IPhotoDao dao;

	@Override
	public ArrayList<Photo> findAllPhoto() {
		ArrayList<Photo> photolist=dao.findAllPhoto();
		return photolist;
	}

	@Override
	public void insertOnePhoto(Photo photo) {
		dao.insertOnePhoto(photo);	
	}

	@Override
	public void deleteOnePhoto(int id) {
		dao.deleteOnePhoto(id);
		
	}

	@Override
	public ArrayList<Photo> findPhotoByremarks(String remarks) {
		System.out.println("*****remarks:"+remarks);
		ArrayList<Photo> photolist=dao.findPhotobyremarks(remarks);
		System.out.println("*****find Photo sevice end*****");
		return photolist;
	}

	@Override
	public Photo findPhotoByPid(int id) {
		// TODO Auto-generated method stub
		return dao.findPhotoByPid(id);
	}

	

}
