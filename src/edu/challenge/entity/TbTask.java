package edu.challenge.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class TbTask implements Serializable {
    private Integer taskId;

    private String taskDesc;

    private String fileName;

    private String teacherId;

    private Integer classId;

    private String courseId;
    
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date taskRelease;

    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm:ss")
    private Date taskAbort;

    private static final long serialVersionUID = 1L;

    public TbTask(Integer taskId, String taskDesc, String fileName, String teacherId, Integer classId, String courseId, Date taskRelease, Date taskAbort) {
        this.taskId = taskId;
        this.taskDesc = taskDesc;
        this.fileName = fileName;
        this.teacherId = teacherId;
        this.classId = classId;
        this.courseId = courseId;
        this.taskRelease = taskRelease;
        this.taskAbort = taskAbort;
    }

    public TbTask() {
        super();
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }

    public String getTaskDesc() {
        return taskDesc;
    }

    public void setTaskDesc(String taskDesc) {
        this.taskDesc = taskDesc == null ? null : taskDesc.trim();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName == null ? null : fileName.trim();
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

    public Date getTaskRelease() {
        return taskRelease;
    }

    public void setTaskRelease(Date taskRelease) {
        this.taskRelease = taskRelease;
    }

    public Date getTaskAbort() {
        return taskAbort;
    }

    public void setTaskAbort(Date taskAbort) {
        this.taskAbort = taskAbort;
    }

	@Override
	public String toString() {
		return "TbTask [taskId=" + taskId + ", taskDesc=" + taskDesc + ", fileName=" + fileName + ", teacherId="
				+ teacherId + ", classId=" + classId + ", courseId=" + courseId + ", taskRelease=" + taskRelease
				+ ", taskAbort=" + taskAbort + "]";
	}
    
    
}