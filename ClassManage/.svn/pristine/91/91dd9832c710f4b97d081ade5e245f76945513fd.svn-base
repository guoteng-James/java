package com.demo.services;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.IStudentDao;
import com.demo.entity.Student;

@Service
public class IStudentServiceImpl implements IStudentService {
	
	
	@Autowired
	private IStudentDao dao;
	private int login_id;
	@Override
	public boolean StudentValidate(HttpServletRequest request,String number,
			String password) {
		System.out.println("//////////////");
		Student s=new Student();
		s.setNumber(number);
		s.setPassword(password);
		Student student=dao.findStudentByNumberAndPwd(s);
		if (student!=null && !"".equals(student.toString())){
			request.getSession().setAttribute("logonName", student.getSname());
			login_id=student.getId();
			return true;
		}else{
		  return false;
		}
	}
	@Override
	public Student findStudentById(int id) {
		// TODO Auto-generated method stub
//		Student student=dao.findStudentByNumberAndPwd("000", "601f1889667efaebb33b8c12572835da3f027f78").get(0);
//		System.out.println(student.getSname());
		return dao.findStudentById(id);
	}
	@Override
	public void modify_pwd(Student student) {
		// TODO Auto-generated method stub
		dao.modifyStudentPwd(student);
	}
	@Override
	public void deleteFile(File file) {
		// TODO Auto-generated method stub
		if (file.exists()) {//判断文件是否存在  
		     if (file.isFile()) //判断是否是文件  
		    	 file.delete();//删除文件   
		    } else {  
		     System.out.println("所删除的文件不存在");  
		    }  
	}
	public void modifyStudentPhoto(Student student) {
		// TODO Auto-generated method stub
			dao.modifyStudentPhoto(student);
	}
	@Override
	public void editStudent(Student student) {
		// TODO Auto-generated method stub
		dao.editStudent(student);
	}
	@Override
	public ArrayList<Student> findAllStudent() {
		// TODO Auto-generated method stub
		ArrayList<Student> studentList = dao.findAllStudent();
		return studentList;
	}
	@Override
	public int getLoginId() {
		// TODO Auto-generated method stub
		return login_id;
	}
	@Override
	public ArrayList<Student> findSomeStudentByNumber(String find) {
		// TODO Auto-generated method stub
		ArrayList<Student> studentList = dao.findSomeStudentByNumber(find);
		return studentList;
	}
	@Override
	public ArrayList<Student> findSomeStudentBySname(String find) {
		// TODO Auto-generated method stub
		ArrayList<Student> studentList = dao.findSomeStudentBySname(find);
		return studentList;
	}
	@Override
	public ArrayList<Student> findSomeStudentByAddress(String find) {
		// TODO Auto-generated method stub
		ArrayList<Student> studentList = dao.findSomeStudentByAddress(find);
		return studentList;
	}
	@Override
	public void addOneStudent(Student student) {
		// TODO Auto-generated method stub
		dao.addOneStudent(student);
	}
	@Override
	public void deleteOne(int id) {
		// TODO Auto-generated method stub
		dao.deleteOne(id);
	}
	@Override
	public void modifyOne(Student student) {
		// TODO Auto-generated method stub
		 dao.modifyOne(student);
	}
	

}
