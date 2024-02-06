package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentTeam;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Student checkstudentlogin(String uname, String pwd) {
		return studentRepository.checkstudentlogin(uname, pwd);
		
	}

	@Override
	public Student addstudent(Student student) {
		
		return studentRepository.save(student);
	}

	@Override
	public List<Student> viewallstudents() {
		return (List<Student>) studentRepository.findAll();
	}

	@Override
	public StudentTeam checklead(String suname) {
	
		return studentRepository.checklead(suname);
	}

	@Override
	public Student viewstudent(String suname) {
		return studentRepository.viewstudent(suname);
	}
	
}
