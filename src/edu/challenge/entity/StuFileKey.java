package edu.challenge.entity;

import java.io.Serializable;

public class StuFileKey implements Serializable {
    private String studentId;

    private Integer taskId;

    private static final long serialVersionUID = 1L;

    public StuFileKey(String studentId, Integer taskId) {
        this.studentId = studentId;
        this.taskId = taskId;
    }

    public StuFileKey() {
        super();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }
}