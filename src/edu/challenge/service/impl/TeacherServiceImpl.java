package edu.challenge.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.poi.xssf.usermodel.examples.CreateCell;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.challenge.entity.CourseClasses;
import edu.challenge.entity.StuFileExample;
import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.StuTask;
import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbCourse;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbStudentExample;
import edu.challenge.entity.TbTask;
import edu.challenge.entity.TbTaskExample;
import edu.challenge.entity.TbTeacher;
import edu.challenge.entity.TbTeacherExample;
import edu.challenge.entity.TbTeacherExample.Criteria;
import edu.challenge.entity.TeacherClassExample;
import edu.challenge.entity.TeacherClassKey;
import edu.challenge.mapper.StuFileMapper;
import edu.challenge.mapper.TbClassesMapper;
import edu.challenge.mapper.TbCourseMapper;
import edu.challenge.mapper.TbStudentMapper;
import edu.challenge.mapper.TbTaskMapper;
import edu.challenge.mapper.TbTeacherMapper;
import edu.challenge.mapper.TeacherClassMapper;
import edu.challenge.service.TeacherService;
@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	TbTeacherMapper teacherMapper;
	@Autowired
	TbTaskMapper taskMapper;
	@Autowired
	TeacherClassMapper tcMapper;
	@Autowired
	TbCourseMapper courseMapper;
	@Autowired
	TbClassesMapper classesMapper;
	@Autowired
	StuFileMapper stuFileMapper;
	@Autowired
	TbStudentMapper studentMapper;
	
	
	@Override
	public TbTeacher login(TbTeacher teacher) {
		if(teacher == null || "".equals(teacher.getTeacherId()) || "".equals(teacher.getTeacherPass())){
			System.out.println("service�㣺��¼ʧ��");
			return null;
		} else {
			TbTeacherExample example = new TbTeacherExample();
			Criteria criteria = example.createCriteria();
			criteria.andTeacherIdEqualTo(teacher.getTeacherId());
			criteria.andTeacherPassEqualTo(teacher.getTeacherPass());
			
			List<TbTeacher> teachers = teacherMapper.selectByExample(example);
			if(teachers != null && teachers.size() > 0){
				return teachers.get(0);
			}
		}
		return null;
	}

	@Override
	public int publicTask(TbTask task) {
		//System.out.println("tbTask:" + taskMapper);
		return taskMapper.insert(task);
	}
	
	@Override
	public void deleteTask(Integer taskId) {
		taskMapper.deleteByPrimaryKey(taskId);

	}

	@Override
	public List<TbStudent> showStudents(Integer classId) {
		TbStudentExample example = new TbStudentExample();
		edu.challenge.entity.TbStudentExample.Criteria criteria = example.createCriteria();
		criteria.andClassIdEqualTo(classId);
		return studentMapper.selectByExample(example);
	}

	@Override
	public List<TeacherClassKey> getCourses(String teacherId) {
		TeacherClassExample example = new TeacherClassExample();
		edu.challenge.entity.TeacherClassExample.Criteria criteria = example.createCriteria();
		criteria.andTeacherIdEqualTo(teacherId);
		List<TeacherClassKey> tClassKeys = tcMapper.selectByExample(example);
		if(tClassKeys != null){
			return tClassKeys;
		}
		return null;
	}

	@Override
	public List<CourseClasses> getCourseClasses(String teacherId) {
		TeacherClassExample example = new TeacherClassExample();
		edu.challenge.entity.TeacherClassExample.Criteria criteria = example.createCriteria();
		criteria.andTeacherIdEqualTo(teacherId);
		List<TeacherClassKey> courseclassId = tcMapper.selectByExample(example);
		if(courseclassId == null){
			return null;
		}
		System.out.println("List Length: " + courseclassId.size());
		Set<String> courseIdsSet = new HashSet<String>();
		for(TeacherClassKey tck0 : courseclassId) {
			courseIdsSet.add(tck0.getCourseId());
		}
		System.out.println("Set Length: " + courseIdsSet.size());
		System.out.println(tcMapper);
		List<CourseClasses> courseClasses = new ArrayList<CourseClasses>();
		List<Integer> classesId = new ArrayList<Integer>();
		
		CourseClasses courseClass = new CourseClasses();
		for(String cid : courseIdsSet){
			TeacherClassExample example1 = new TeacherClassExample();
			edu.challenge.entity.TeacherClassExample.Criteria criteria1 = example1.createCriteria();
			criteria1.andTeacherIdEqualTo(teacherId);
			criteria1.andCourseIdEqualTo(cid);
			System.out.println("��ʦ��" + teacherId);
			System.out.println("�γ̣�" + cid);
			System.out.println("Mapper: " + tcMapper);
			List<TeacherClassKey> tClassKeys = tcMapper.selectByExample(example1);
			System.out.println("Size: " + tClassKeys.size());
			for(TeacherClassKey tck1 : tClassKeys){
				System.out.println(tck1);
				classesId.add(tck1.getClassId());
			}
			TbCourse course = courseMapper.selectByPrimaryKey(cid);
			List<TbClasses> listClasses = new ArrayList<TbClasses>();
			for(Integer classId : classesId){
				TbClasses classes = classesMapper.selectByPrimaryKey(classId);
				listClasses.add(classes);
			}
			courseClass.setCourse(course);
			System.out.println(course);
			courseClass.setClasses(listClasses);
			courseClasses.add(courseClass);
		}
		return courseClasses;
	}

	@Override
	public List<TbTask> listTasks(Integer classId,String teacherId) {
		TbTaskExample example = new TbTaskExample();
		edu.challenge.entity.TbTaskExample.Criteria criteria = example.createCriteria();
		criteria.andClassIdEqualTo(classId);
		criteria.andTeacherIdEqualTo(teacherId);
		
		return taskMapper.selectByExample(example);
	}
	
	public List<TbTask> showTasks(String teacherId){
		TbTaskExample example = new TbTaskExample();
		edu.challenge.entity.TbTaskExample.Criteria criteria = example.createCriteria();
		criteria.andTeacherIdEqualTo(teacherId);
		return taskMapper.selectByExample(example);
	}

	@Override
	public TbTask selecTask(Integer taskId) {
		return taskMapper.selectByPrimaryKey(taskId);
	}

	@Override
	public List<StuFileKey> listStuFiles() {
		//
		return null;
	}

	@Override
	public List<StuTask> showStuHomeworks(Integer taskId) {
		return taskMapper.showStuHomeworks(taskId);
	}

	@Override
	public int countStus(Integer classId) {
		TbStudentExample example = new TbStudentExample();
		edu.challenge.entity.TbStudentExample.Criteria criteria = example.createCriteria();
		criteria.andClassIdEqualTo(classId);
		return studentMapper.countByExample(example);
		
	}

	@Override
	public int countSubStus(Integer taskId) {
		StuFileExample example = new StuFileExample();
		edu.challenge.entity.StuFileExample.Criteria criteria = example.createCriteria();
		criteria.andTaskIdEqualTo(taskId);
		return stuFileMapper.countByExample(example);
	}

	@Override
	public Integer countTasks(String teacherId) {
		TbTaskExample example = new TbTaskExample();
		edu.challenge.entity.TbTaskExample.Criteria criteria = example.createCriteria();
		criteria.andTeacherIdEqualTo(teacherId);
		return taskMapper.countByExample(example);
	}

	@Override
	public TbTeacher person(String teacherId) {
		return teacherMapper.selectByPrimaryKey(teacherId);
	}

	@Override
	public void updateInfo(TbTeacher teacher) {
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}

	@Override
	public TbTask updateTask(TbTask task) {
		taskMapper.updateByPrimaryKey(task);
		return null;
	}
	
	
	
	

}
