package edu.challenge.entity;

import java.util.Date;

public class StuTask {
	
	private StuFile sFile;
	private String studentName;
	
	public StuTask() {
		super();
	}
	public StuTask(String studentId,Integer taskId, String studentName,Date fileRelease) {
		super();
		this.sFile = new StuFile(studentId,taskId,fileRelease);
		this.studentName = studentName;
	}
	public StuFile getsFile() {
		return sFile;
	}
	public void setsFile(StuFile sFile) {
		this.sFile = sFile;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	@Override
	public String toString() {
		return "StuTask [sFile=" + sFile.toString() + ", studentName=" + studentName + "]";
	}
	
}
