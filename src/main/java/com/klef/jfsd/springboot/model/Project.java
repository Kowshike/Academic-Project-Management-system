package com.klef.jfsd.springboot.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="project_table")
public class Project 
{
	@Id
	@GeneratedValue
	   private int id;
	@Column(length = 200,unique =true)
	   private String teamlead;
	@Column(nullable = false,length = 200)
	   private String name;
	  @Column(length = 200)
	   private String description;
	  @Column(nullable = false,length = 200)
	   private String researcharea;
	  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTeamlead() {
		return teamlead;
	}
	public void setTeamlead(String teamlead) {
		this.teamlead = teamlead;
	}
	public String getResearcharea() {
		return researcharea;
	}
	public void setResearcharea(String researcharea) {
		this.researcharea = researcharea;
	}
	
	
	
	 
}
