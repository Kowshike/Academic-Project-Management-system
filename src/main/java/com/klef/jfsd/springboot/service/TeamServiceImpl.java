package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.StudentTeam;
import com.klef.jfsd.springboot.repository.TeamRepository;

@Service
public class TeamServiceImpl implements TeamService
{

	@Autowired
	public TeamRepository teamRepository;
	@Override
	public StudentTeam addstudentteam(StudentTeam studentTeam) {
		return teamRepository.save(studentTeam);
	}
//	@Override
//	public StudentTeam checkteam(StudentTeam studentTeam) {
//		return teamRepository.findById(studentTeam.getStudent1()).get();
//	}
	@Override
	public StudentTeam checkteam(String uname) {
		return teamRepository.checkteam(uname, uname, uname);
	}
	@Override
	public int updatementor(int facultyid, String uname) {
		// TODO Auto-generated method stub
		return teamRepository.updatementor(facultyid, uname);
	}
	@Override
	public List<StudentTeam> viewallstudentteams() {
		
		return (List<StudentTeam>) teamRepository.findAll();
	}

	@Override
	public StudentTeam getteambyid(int teamid) {
		// TODO Auto-generated method stub
		return teamRepository.viewteambyid(teamid);
	}
	@Override
	public List<StudentTeam> viewteamsbymentor(int mid) {
		// TODO Auto-generated method stub
		return (List<StudentTeam>) teamRepository.viewteamsbymentor(mid);
	}
	
	
	
	

}
