package com.demo.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.demo.entity.Photo;
import com.demo.services.IPhotoService;
import com.demo.services.IStudentService;
import com.demo.util.JsonView;

@Controller
@Scope("prototype")
@RequestMapping("/photo.do")
public class PhotoController {
	@Autowired
	private IPhotoService service;
	@Autowired
	public IStudentService stu_service;
	@RequestMapping(params = "action=select_photo")
	public ModelAndView select_photo(HttpServletRequest request,ModelMap map,int login_id) throws Exception{
		int manager=stu_service.findStudentById(login_id).getManager();
		ArrayList<Photo> photolist;
		photolist=service.findAllPhoto();
		map.put("photolist", photolist);
		map.put("manager", manager);
		map.put("login_id", login_id);
		return new ModelAndView("photo");
	}
	@RequestMapping(params = "action=addPhotoView")
	public ModelAndView addStudentView(HttpServletRequest request,ModelMap map) throws IOException{
		
	    return new ModelAndView("addphoto");  
	}
	
	@SuppressWarnings({ "rawtypes", "unused" })
	@RequestMapping(params = "action=insertphoto")
	public String insertphoto(HttpServletRequest request,ModelMap map,String remarks)throws Exception{
		
	         //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
	        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	                request.getSession().getServletContext());
	        //检查form中是否有enctype="multipart/form-data"
	        
	            //将request变成多部分request
	            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
	           //获取multiRequest 中所有的文件名
	            Iterator iter=multiRequest.getFileNames();
	            System.out.println(iter);
	            MultipartFile file=multiRequest.getFile(iter.next().toString());
	            PictureController pic=new PictureController();
	            String Pname=pic.picUpload(file);
                Photo photo=new Photo();
                photo.setPname(Pname);
                photo.setRemarks(remarks);
	           service.insertOnePhoto(photo);
                
                return "/add_succ";   
	}

	@RequestMapping(params = "action=deletePhoto")
	public JsonView deletePhoto(HttpServletRequest request,ModelMap map,
			String uuid)throws Exception{
		String path=Thread.currentThread().getContextClassLoader().getResource("").getPath();//获取项目路径
		path = URLDecoder.decode(path,"utf-8").replace("\\", "/");//将【\】转换成【/】
		path = path.substring(1, path.lastIndexOf("/"));//得到除去最后一个【/】的字符串地址
		path = path.substring(0, path.lastIndexOf("/"));//去除项目路径倒数第二个【/】后的字符串获得最终路径
		path = path.substring(0, path.lastIndexOf("/"));//去除项目路径倒数第二个【/】后的字符串获得最终路径
		path += "/images/classimg/";
		//path="D:/ClassManage/ClassManage/WebContent/images/classimg/";
		JsonView view =new JsonView();
		try {
			System.out.println("action=deletePhoto");
			String[] id=uuid.split(",");
			String pname="";
			for (int i = 0; i < id.length; i++) {
				pname = service.findPhotoByPid(Integer.parseInt(id[i])).getPname();
				System.out.println("删除图片："+path+pname);
				service.deleteOnePhoto(Integer.parseInt(id[i]));
				stu_service.deleteFile(new File(path+pname));
			}
			System.out.println("*****delete ok******");
			view.setProperty("result", "ok");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			view.setProperty("result","error");
		}
		return view;
		
	}
	
	@RequestMapping(params = "action=selectPhotoByremarks")
	public ModelAndView findPhotoByremarks(HttpServletRequest request,ModelMap map,String remarks,int login_id)throws Exception{
		remarks = new String(remarks.getBytes("ISO-8859-1"), "UTF-8");
		ArrayList<Photo> photolist=null;
		int manager=stu_service.findStudentById(login_id).getManager();
		System.out.println("00");
		if(remarks!=""){
			System.out.println("01");
			photolist=service.findPhotoByremarks(remarks);
		}else{
			System.out.println("01");
			photolist=service.findAllPhoto();
		}
		map.put("photolist", photolist);
		map.put("manager", manager);
		map.put("login_id", login_id);
		return new ModelAndView("photo");
	}
	

}
