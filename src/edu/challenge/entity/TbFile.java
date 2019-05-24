package edu.challenge.entity;

import java.io.Serializable;
import java.util.Date;

public class TbFile implements Serializable {
    private Integer fileId;

    private Date fileRelease;

    private String courseId;

    private String studentId;

    private static final long serialVersionUID = 1L;

    public TbFile(Integer fileId, Date fileRelease, String courseId, String studentId) {
        this.fileId = fileId;
        this.fileRelease = fileRelease;
        this.courseId = courseId;
        this.studentId = studentId;
    }

    public TbFile() {
        super();
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public Date getFileRelease() {
        return fileRelease;
    }

    public void setFileRelease(Date fileRelease) {
        this.fileRelease = fileRelease;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId == null ? null : courseId.trim();
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId == null ? null : studentId.trim();
    }
}