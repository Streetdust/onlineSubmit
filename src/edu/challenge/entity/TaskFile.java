package edu.challenge.entity;

import java.io.Serializable;

public class TaskFile extends TaskFileKey implements Serializable {
    private Boolean taskState;

    private static final long serialVersionUID = 1L;

    public TaskFile(String studentId, String taskId, Boolean taskState) {
        super(studentId, taskId);
        this.taskState = taskState;
    }

    public TaskFile() {
        super();
    }

    public Boolean getTaskState() {
        return taskState;
    }

    public void setTaskState(Boolean taskState) {
        this.taskState = taskState;
    }
}