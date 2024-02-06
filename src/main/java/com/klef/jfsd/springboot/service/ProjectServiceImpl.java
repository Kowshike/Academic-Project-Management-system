package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Mentor;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.repository.ProjectRepository;
@Service
public class ProjectServiceImpl implements ProjectService
{
	@Autowired
private ProjectRepository projectRepository;
	@Override
	public Project addproject(Project project) {
		
		return projectRepository.save(project);
	}
	@Override
	public Project viewproject(String leadname) {
		return projectRepository.getproject(leadname);
	}
	
	
}
