package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Project;

@Repository
public interface ProjectRepository extends CrudRepository<Project, Integer>
{
	@Query("select p from Project p where teamlead=?1")
	public Project getproject(String leadname);
	
}
