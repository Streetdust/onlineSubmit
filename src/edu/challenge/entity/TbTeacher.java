package edu.challenge.entity;

import java.io.Serializable;

public class TbTeacher implements Serializable {
    private String teacherId;

    private String teacherName;

    private String teacherPass;

    private String teacherTel;

    private static final long serialVersionUID = 1L;

    public TbTeacher(String teacherId, String teacherName, String teacherPass, String teacherTel) {
        this.teacherId = teacherId;
        this.teacherName = teacherName;
        this.teacherPass = teacherPass;
        this.teacherTel = teacherTel;
    }

    public TbTeacher() {
        super();
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName == null ? null : teacherName.trim();
    }

    public String getTeacherPass() {
        return teacherPass;
    }

    public void setTeacherPass(String teacherPass) {
        this.teacherPass = teacherPass == null ? null : teacherPass.trim();
    }

    public String getTeacherTel() {
        return teacherTel;
    }

    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel == null ? null : teacherTel.trim();
    }
}