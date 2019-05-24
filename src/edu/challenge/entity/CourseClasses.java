package edu.challenge.entity;

import java.util.List;

public class CourseClasses {
	
	private TbCourse course;
	private List<TbClasses> classes;
	
	public CourseClasses() {
		super();
	}
	public CourseClasses(TbCourse course, List<TbClasses> classes) {
		super();
		this.course = course;
		this.classes = classes;
	}
	public TbCourse getCourse() {
		return course;
	}
	public void setCourse(TbCourse course) {
		this.course = course;
	}
	public List<TbClasses> getClasses() {
		return classes;
	}
	public void setClasses(List<TbClasses> classes) {
		this.classes = classes;
	}
	@Override
	public String toString() {
		return "CourseClasses [course=" + course + ", classes=" + classes + "]";
	}
	
	

}
