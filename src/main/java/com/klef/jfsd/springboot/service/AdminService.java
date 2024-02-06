package com.klef.jfsd.springboot.service;





import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Mentor;
import com.klef.jfsd.springboot.model.Student;
public interface AdminService
{
	public Admin checkadminlogin(String uname,String pwd);
	public void deletementor(int id);
	public Mentor viewmentorbyid(int id);
	public void deletestudent(int id);
	public Student viewstudentbyid(int id);
}
