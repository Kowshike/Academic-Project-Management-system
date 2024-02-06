package com.klef.jfsd.springboot.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.ProjectReview;
@Repository
public interface ProjectReviewRepository extends CrudRepository<ProjectReview, Integer>{

}
