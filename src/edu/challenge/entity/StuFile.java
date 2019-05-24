package edu.challenge.entity;

import java.io.Serializable;
import java.util.Date;

public class StuFile extends StuFileKey implements Serializable {
    private Date fileRelease;

    private static final long serialVersionUID = 1L;

    public StuFile(String studentId, Integer taskId, Date fileRelease) {
        super(studentId, taskId);
        this.fileRelease = fileRelease;
    }

    public StuFile() {
        super();
    }

    public Date getFileRelease() {
        return fileRelease;
    }

    public void setFileRelease(Date fileRelease) {
        this.fileRelease = fileRelease;
    }
}