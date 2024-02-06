package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.StudentTeam;

@Repository
public interface TeamRepository extends CrudRepository<StudentTeam, Integer>
{
	@Query("select t from StudentTeam t where student1=?1 or student2=?2 or student3=?3")
	public StudentTeam checkteam(String suname,String suname2,String suname3);
	@Transactional
	@Modifying
	@Query("update StudentTeam t set t.facultyid=?1 where t.student1=?2")
	public int updatementor(int facultyid,String suname);
	@Query("select t from StudentTeam t where facultyid=?1")
	public List<StudentTeam> viewteamsbymentor(int mid);
	@Query("select t from StudentTeam t where teamid=?1")
	public StudentTeam viewteambyid(int teamid);
}
