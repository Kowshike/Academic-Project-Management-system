package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentTeam;

public interface StudentService {
	public Student addstudent(Student student);
	public Student checkstudentlogin(String uname,String pwd);
	public List<Student> viewallstudents();
	public StudentTeam checklead(String suname);
	public Student viewstudent(String suname);
}
