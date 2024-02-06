package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentTeam;

public interface TeamService {
	public StudentTeam addstudentteam(StudentTeam studentTeam);

	StudentTeam checkteam(String uname);
	public int updatementor(int facultyid,String uname);
	public List<StudentTeam> viewallstudentteams();
	public List<StudentTeam> viewteamsbymentor(int mid);
	public StudentTeam getteambyid(int teamid);
}
