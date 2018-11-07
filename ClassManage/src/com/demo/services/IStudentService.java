package com.demo.services;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.demo.entity.Student;

public interface IStudentService {
	public boolean StudentValidate(HttpServletRequest request,String number,String password);
	public Student findStudentById(int id);
	public int getLoginId();
	public void modify_pwd(Student student);
	public void deleteFile(File file);
	public void modifyStudentPhoto(Student student);
	public void editStudent(Student student);
	public ArrayList<Student> findAllStudent();
	public ArrayList<Student> findSomeStudentByNumber(String find);
	public ArrayList<Student> findSomeStudentBySname(String find);
	public ArrayList<Student> findSomeStudentByAddress(String find);
	public void addOneStudent(Student student);
	public void deleteOne(int id);
	public void modifyOne(Student student);
}
