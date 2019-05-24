package edu.challenge.entity;

import java.io.Serializable;

public class DepaMajorKey implements Serializable {
    private String classDepa;

    private String classMajor;

    private static final long serialVersionUID = 1L;

    public DepaMajorKey(String classDepa, String classMajor) {
        this.classDepa = classDepa;
        this.classMajor = classMajor;
    }

    public DepaMajorKey() {
        super();
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