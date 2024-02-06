package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.ProjectReview;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.ProjectReviewRepository;
@Service
public class ProjectReviewServiceImpl implements ProjectReviewService{

	@Autowired
	private ProjectReviewRepository projectReviewRepository;
	@Override
	public ProjectReview addprojectreview(ProjectReview projectReview) {
		// TODO Auto-generated method stub
		return projectReviewRepository.save(projectReview);
	}

}
