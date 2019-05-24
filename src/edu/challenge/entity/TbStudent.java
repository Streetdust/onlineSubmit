package edu.challenge.entity;

import java.io.Serializable;

public class TbStudent implements Serializable {
    private String studentId;

    private String studentName;

    private String studentPass;

    private Integer classId;

    private static final long serialVersionUID = 1L;

    public TbStudent(String studentId, String studentName, String studentPass, Integer classId) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentPass = studentPass;
        this.classId = classId;
    }

    public TbStudent() {
        super();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName == null ? null : studentName.trim();
    }

    public String getStudentPass() {
        return studentPass;
    }

    public void setStudentPass(String studentPass) {
        this.studentPass = studentPass == null ? null : studentPass.trim();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }
}