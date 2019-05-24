package edu.challenge.entity;

import java.io.Serializable;

public class TeacherClassKey implements Serializable {
    private String teacherId;

    private Integer classId;

    private String courseId;

    private static final long serialVersionUID = 1L;

    public TeacherClassKey(String teacherId, Integer classId, String courseId) {
        this.teacherId = teacherId;
        this.classId = classId;
        this.courseId = courseId;
    }

    public TeacherClassKey() {
        super();
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId == null ? null : teacherId.trim();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId == null ? null : courseId.trim();
    }
}