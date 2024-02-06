package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Mentor;


@Repository
public interface	MentorRepository extends CrudRepository<Mentor, Integer>
{
	@Query("select m from Mentor m where username=?1 and password=?2")
	public Mentor checkmentorlogin(String uname,String pwd);
	
	@Query("select m from Mentor m where username=?1")
	public Mentor viewmentor(String uname);
	
	
	
}
