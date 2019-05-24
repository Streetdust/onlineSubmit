package edu.challenge.service;

import java.util.List;


import javax.annotation.Resource;

import edu.challenge.entity.DepaMajorKey;
import edu.challenge.entity.TbAdmin;
import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTeacher;
import edu.challenge.mapper.TbAdminMapper;

public interface AdminService {

	public TbAdmin login(TbAdmin admin);
	
	
	public List<TbClasses> searchAllClass(int page,int count);
	public int getAllClassNum();
	public int deleteOneClassInfo(int classId);
	public List<DepaMajorKey> searchDepaInfo();
	public List<DepaMajorKey> searchMajorInfo(String depaname);
	public int addOneClassInfo(String className,String depa,String major);
	public int updateClassInfo(TbClasses tbclass);
	public List<TbClasses> searchAllClassToExcel();
	
	public List<TbStudent> searchAllStudent(int page,int count);
	public int getAllStuNum();
	public int deleteOneStuInfo(String studentId);
	public List<TbClasses> searchAllClassInFo(String depa,String major);
	public TbStudent stuIdCheck(String stuid);
	public int addNewStu(TbStudent tbstu);
	public int searchClassIdInfo(String depaname,String majorname,String classname);
	public int updateStuInfo(TbStudent student);
	public List<TbStudent> searchAllStudentToExcel();
	
	
	
	public List<TbTeacher> searchAllTeacher(int page,int count);
	public int getAllTeaNum();
	public TbTeacher teaIdCheck(String teaId);
	public int addNewTea(TbTeacher tea);
	public int deleteOneTeaInfo(String teacherId);
	public int updateTeaInfo(TbTeacher tea);
	public List<TbTeacher> searchAllTeaToExcel();
	
	public int editAdmPhone(TbAdmin adm);
	public TbAdmin selectAdminInfo(String adminName);
	public TbClasses classNameCheck(String classname,String depaname,String majorname);
	

}
