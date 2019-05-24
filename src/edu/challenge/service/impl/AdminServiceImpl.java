package edu.challenge.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.challenge.entity.DepaMajorExample;
import edu.challenge.entity.DepaMajorKey;
import edu.challenge.entity.TbAdmin;
import edu.challenge.entity.TbAdminExample;
import edu.challenge.entity.TbClassesExample;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbStudentExample;
import edu.challenge.entity.TbTeacher;
import edu.challenge.entity.TbTeacherExample;
import edu.challenge.entity.TbAdminExample.Criteria;
import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbClassesExample;
import edu.challenge.mapper.DepaMajorMapper;
import edu.challenge.mapper.TbAdminMapper;
import edu.challenge.mapper.TbClassesMapper;
import edu.challenge.mapper.TbStudentMapper;
import edu.challenge.mapper.TbTeacherMapper;
import edu.challenge.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	TbAdminMapper adminmapper;
	@Resource
	TbClassesMapper classMapper;
	@Resource
	DepaMajorMapper depaMapper;
	@Resource
	TbStudentMapper stuMapper;
	@Resource
	TbTeacherMapper teaMapper;

	@Override
	public TbAdmin login(TbAdmin admin) {
		if (admin == null || " ".equals(admin.getAdminName()) || " ".equals(admin.getAdminPass())) {

			return null;

		} else {

			TbAdminExample example = new TbAdminExample();
			Criteria criteria = example.createCriteria();
			criteria.andAdminNameEqualTo(admin.getAdminName());
			criteria.andAdminPassEqualTo(admin.getAdminPass());

			List<TbAdmin> admins = adminmapper.selectByExample(example);
			if (admins != null && admins.size() > 0) {

				return admins.get(0);
			}

		}
		return null;

	}

	@Override
	public List<TbClasses> searchAllClass(int page, int count) {

		System.out.println("进入searchAllClass()方法");

		TbClassesExample example = new TbClassesExample();
//		edu.challenge.entity.TbClassesExample.Criteria criteria=example.createCriteria();
//		System.out.println(classMapper);

		List<TbClasses> classes = classMapper.selectByPage(page, count);

//		for(int i=0;i<classes.size();i++) {
//			System.out.println(classes.get(i).toString());
//		}

//		System.out.println(classes.size());
		return classes;

	}

	@Override
	public int getAllClassNum() {
		System.out.println("进入查询所有班级数量的方法");

		TbClassesExample example = new TbClassesExample();
		int count = classMapper.countByExample(example);

		System.out.println("班级数量为:" + count);

		return count;
	}

	@Override
	public int deleteOneClassInfo(int classId) {
		System.out.println("进入通过id删除班级信息的方法");
		int result = classMapper.deleteByPrimaryKey(classId);
//		System.out.println(result);
		return result;

	}

	@Override
	public List<DepaMajorKey> searchDepaInfo() {
		System.out.println("进入查询院系信息的方法");
		DepaMajorExample depa = new DepaMajorExample();
		List<DepaMajorKey> list = new ArrayList<DepaMajorKey>();
		list = depaMapper.selectByExample(depa);
//		System.out.println(list.size());
		return list;
	}

	@Override
	public List<DepaMajorKey> searchMajorInfo(String depaname) {
		System.out.println("进入查询专业信息的方法");
		DepaMajorExample depa = new DepaMajorExample();
		List<DepaMajorKey> list = new ArrayList<DepaMajorKey>();
		list = depaMapper.selectByDepa(depaname);
//		System.out.println(list.size());
		return list;
	}

	@Override
	public int addOneClassInfo(String className, String depa, String major) {
		System.out.println("进入添加班级信息的方法");
		int result = classMapper.insertNoClassId(className, depa, major);
		return result;
	}

	@Override
	public int updateClassInfo(TbClasses tbclass) {
		System.out.println("进入编辑班级信息的方法");
		int result = classMapper.updateByPrimaryKey(tbclass);
		return result;

	}

	@Override
	public List<TbStudent> searchAllStudent(int page, int count) {
		System.out.println("进入searchAllStudent()方法");

		List<TbStudent> classes = stuMapper.selectByPage(page, count);

		return classes;

	}

	@Override
	public int getAllStuNum() {
		System.out.println("进入查询所有学生数量的方法");

		TbStudentExample example = new TbStudentExample();
		int count = stuMapper.countByExample(example);

		System.out.println("学生数量为:" + count);

		return count;
	}

	@Override
	public int deleteOneStuInfo(String studentId) {
		System.out.println("进入通过学号删除学生信息的方法");
		int result = stuMapper.deleteByPrimaryKey(studentId);
//		System.out.println(result);
		return result;
	}

	@Override
	public List<TbClasses> searchAllClassInFo(String depa, String major) {
		System.out.println("进入searchAllClass()方法");

		TbClassesExample example = new TbClassesExample();

		List<TbClasses> classes = classMapper.selectAllClassInfo(depa, major);

		return classes;

	}

	@Override
	public TbStudent stuIdCheck(String stuid) {
		TbStudent stu=new TbStudent();
		stu=stuMapper.selectByPrimaryKey(stuid);
		return stu;
	}

	@Override
	public int addNewStu(TbStudent tbstu) {
		int resurl=stuMapper.insert(tbstu);
		return resurl;
	}

	@Override
	public int searchClassIdInfo(String depaname, String majorname, String classname) {
		
		TbClasses tbclass=classMapper.searchClassIdInfo(depaname, majorname, classname);
		System.out.println(tbclass.getClassId());
		
		return tbclass.getClassId();
	}

	@Override
	public int updateStuInfo(TbStudent student) {
		System.out.println("进入编辑学生信息的方法");
		int result = stuMapper.updateByPrimaryKey(student);
		return result;
	}

	@Override
	public List<TbTeacher> searchAllTeacher(int page, int count) {
		List<TbTeacher> list=teaMapper.selectByPage(page, count);
		return list;
	}

	@Override
	public int getAllTeaNum() {
		System.out.println("进入查询所有教师数量的方法");

		TbTeacherExample example = new TbTeacherExample();
		int count = teaMapper.countByExample(example);

		System.out.println("教师数量为:" + count);

		return count;
	}

	@Override
	public TbTeacher teaIdCheck(String teaId) {
		TbTeacher stu=new TbTeacher();
		stu=teaMapper.selectByPrimaryKey(teaId);
		return stu;
	}

	@Override
	public int addNewTea(TbTeacher tea) {
		int resurl=teaMapper.insert(tea);
		return resurl;
	}

	@Override
	public int deleteOneTeaInfo(String teacherId) {
		System.out.println("进入通过职工号删除教师信息的方法");
		int result = teaMapper.deleteByPrimaryKey(teacherId);
//		System.out.println(result);
		return result;
	}

	@Override
	public int updateTeaInfo(TbTeacher tea) {
		System.out.println("进入编辑教师信息的方法");
		int result = teaMapper.updateByPrimaryKey(tea);
		return result;
	}

	@Override
	public int editAdmPhone(TbAdmin adm) {
		System.out.println("进入编辑管理员手机号的方法");
		int result = adminmapper.updateByPrimaryKey(adm);
		return result;
	}

	@Override
	public TbAdmin selectAdminInfo(String adminName) {
		TbAdmin adm=adminmapper.selectByPrimaryKey(adminName);
		return adm;
	}

	@Override
	public TbClasses classNameCheck(String classname,String depaname,String majorname) {

		TbClasses classs=new TbClasses();
		TbClassesExample example=new TbClassesExample();
		edu.challenge.entity.TbClassesExample.Criteria c=example.createCriteria();
		c.andClassNumEqualTo(classname);
		c.andClassDepaEqualTo(depaname);
		c.andClassMajorEqualTo(majorname);
		List<TbClasses> classS = classMapper.selectByExample(example);
		if (classS != null && classS.size() > 0) {

			return classS.get(0);
		}
		
		return null;
	}

	@Override
	public List<TbStudent> searchAllStudentToExcel() {
		TbStudentExample example=new TbStudentExample();
		List<TbStudent> lsit=stuMapper.selectByExample(example);
		return lsit;
	}

	@Override
	public List<TbClasses> searchAllClassToExcel() {
		TbClassesExample example=new TbClassesExample();
		List<TbClasses> lsit=classMapper.selectByExample(example);
		return lsit;
	}

	@Override
	public List<TbTeacher> searchAllTeaToExcel() {
		TbTeacherExample example=new TbTeacherExample();
		List<TbTeacher> lsit=teaMapper.selectByExample(example);
		return lsit;
	}

	
}
