package edu.challenge.entity;

import java.io.Serializable;

public class TaskFileKey implements Serializable {
    private String studentId;

    private String taskId;

    private static final long serialVersionUID = 1L;

    public TaskFileKey(String studentId, String taskId) {
        this.studentId = studentId;
        this.taskId = taskId;
    }

    public TaskFileKey() {
        super();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }

    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId == null ? null : taskId.trim();
    }
}