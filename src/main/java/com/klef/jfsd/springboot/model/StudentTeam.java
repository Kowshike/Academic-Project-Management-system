package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="team_table")
public class StudentTeam 
{
	@Id
	  @GeneratedValue
	   private int teamid;
	@Column(nullable=false)
	private int facultyid;
	public int getFacultyid() {
		return facultyid;
	}
	public void setFacultyid(int facultyid) {
		this.facultyid = facultyid;
	}
	public int getTeamid() {
		return teamid;
	}
	public void setTeamid(int teamid) {
		this.teamid = teamid;
	}
	public String getStudent1() {
		return student1;
	}
	public void setStudent1(String student1) {
		this.student1 = student1;
	}
	public String getStudent2() {
		return student2;
	}
	public void setStudent2(String student2) {
		this.student2 = student2;
	}
	public String getStudent3() {
		return student3;
	}
	public void setStudent3(String student3) {
		this.student3 = student3;
	}
	@Column(nullable = false,unique = true,length=100)
	   private String student1;
	  @Column(unique = true,length=100)
	   private String student2;
	  @Column(unique = true,length=100)
	   private String student3;
	  
	
}
