package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Mentor;

public interface MentorService 
{
	public Mentor checkmentorlogin(String uname,String pwd);
	public Mentor addmentor(Mentor mentor);
	public List<Mentor> viewallmentors();
	public Mentor viewmentor(String uname);
}
