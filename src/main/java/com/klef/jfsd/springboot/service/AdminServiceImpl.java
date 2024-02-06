package com.klef.jfsd.springboot.service;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Mentor;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRespository;
import com.klef.jfsd.springboot.repository.MentorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;


@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRespository adminRespository;
	
	@Autowired
	private MentorRepository mentorRepository;
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		return adminRespository.checkadminlogin(uname, pwd);
		 
	}


	@Override
	public void deletementor(int id) {
		 mentorRepository.deleteById(id);
				
	}


	@Override
	public Mentor viewmentorbyid(int id) {
		return mentorRepository.findById(id).get();
	}


	@Override
	public void deletestudent(int id) {
		studentRepository.deleteById(id);
	}


	@Override
	public Student viewstudentbyid(int id) {
		return studentRepository.findById(id).get();
	}
	

}
