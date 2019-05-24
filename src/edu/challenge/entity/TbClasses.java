package edu.challenge.entity;

import java.io.Serializable;

public class TbClasses implements Serializable {
    private Integer classId;

    private String classNum;

    private String classDepa;

    private String classMajor;

    private static final long serialVersionUID = 1L;

    public TbClasses(Integer classId, String classNum, String classDepa, String classMajor) {
        this.classId = classId;
        this.classNum = classNum;
        this.classDepa = classDepa;
        this.classMajor = classMajor;
    }

    public TbClasses() {
        super();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassNum() {
        return classNum;
    }

    public void setClassNum(String classNum) {
        this.classNum = classNum == null ? null : classNum.trim();
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