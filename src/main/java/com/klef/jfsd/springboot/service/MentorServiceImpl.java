package com.klef.jfsd.springboot.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Mentor;
import com.klef.jfsd.springboot.repository.MentorRepository;

@Service
public class MentorServiceImpl implements MentorService
{

	@Autowired
	private MentorRepository mentorRepository;
	
	@Override
	public Mentor checkmentorlogin(String uname, String pwd) {
		return mentorRepository.checkmentorlogin(uname, pwd);
	}

	@Override
	public Mentor addmentor(Mentor mentor) {
		return mentorRepository.save(mentor);
	}

	@Override
	public List<Mentor> viewallmentors() {
		
		return (List<Mentor>) mentorRepository.findAll();
	}
	@Override
	public Mentor viewmentor(String uname) {
		return mentorRepository.viewmentor(uname);
	}


}
