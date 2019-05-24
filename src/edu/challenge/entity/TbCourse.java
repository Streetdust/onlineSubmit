package edu.challenge.entity;

import java.io.Serializable;

public class TbCourse implements Serializable {
    private String courseId;

    private String courseName;

    private String classDepa;

    private String classMajor;

    private static final long serialVersionUID = 1L;

    public TbCourse(String courseId, String courseName, String classDepa, String classMajor) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.classDepa = classDepa;
        this.classMajor = classMajor;
    }

    public TbCourse() {
        super();
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId == null ? null : courseId.trim();
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName == null ? null : courseName.trim();
    }

    public String getClassDepa() {
        return classDepa;
    }

    public void setClassDepa(String classDepa) {
        this.classDepa = classDepa == null ? null : classDepa.trim();
    }

    public String getClassMajor() {
        return classMajor;
    }

    public void setClassMajor(String classMajor) {
        this.classMajor = classMajor == null ? null : classMajor.trim();
    }
}