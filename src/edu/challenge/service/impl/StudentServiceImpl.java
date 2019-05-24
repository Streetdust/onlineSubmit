package edu.challenge.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import edu.challenge.entity.StuFileExample;
import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.StuFile;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbStudentExample;
import edu.challenge.entity.TbTeacher;
import edu.challenge.entity.TbStudentExample.Criteria;
import edu.challenge.mapper.StuFileMapper;
import edu.challenge.mapper.TbStudentMapper;
import edu.challenge.mapper.TbTeacherMapper;
import edu.challenge.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	TbStudentMapper tbStudentMapper;
	@Autowired
	TbTeacherMapper tbTeacherMapper;
	@Autowired
	StuFileMapper stuFileMapper; 
	
	@Override
	public List<TbTeacher> selectall() {		
		return tbTeacherMapper.selectByExample(null);
	}
	//�ѽ�
	public int yijiao(String studentId){
		StuFileExample example=new StuFileExample();
		edu.challenge.entity.StuFileExample.Criteria c=example.createCriteria();
		c.andStudentIdEqualTo(studentId);
		int i=stuFileMapper.countByExample(example);
		return i;
	}
	//δ��
	public int weijiao(String studentId,Integer classId){
		int i=stuFileMapper.countweijiao(classId, studentId);
		return 1;
	}
	
	
	@Override
	public TbStudent login(String stuid, String stupass) {
		TbStudent stu=null;
		if((stuid==null&&stuid.trim().equals(""))||(stupass==null&&stupass.trim().equals(""))){
			return stu;
		}else{
			TbStudentExample example=new TbStudentExample();
			Criteria c=example.createCriteria();
			c.andStudentIdEqualTo(stuid);
			c.andStudentPassEqualTo(stupass);
			
			List<TbStudent> list=tbStudentMapper.selectByExample(example);
			if(list!=null&&list.size()>0){
				stu=list.get(0);
			}
			
			return stu;
			
		}
		
	}
	
	//��ѯ����ѧ��������ѧ���б�
	@Override
	public List<TbStudent> selectStu() {
		return tbStudentMapper.selectByExample(null);
	}
	//�޸�ѧ��
	@Override
	public void updateStu(TbStudent stu) {
		tbStudentMapper.updateByPrimaryKey(stu);
	}
	//����idɾ��ѧ��
	@Override
	public void deleteStu(TbStudent stu) {
		tbStudentMapper.deleteByPrimaryKey(stu.getStudentId());

	}
	//���ѧ��
	@Override
	public void addStu(TbStudent stu) {
		tbStudentMapper.insert(stu);

	}

	@Override
	public TbStudent getStuById(String stuid) {
		return tbStudentMapper.selectByPrimaryKey(stuid);
	}

	@Override
	public PageInfo<TbStudent> selectStuPage(Integer pageNum, Integer pageSize) {
		
		PageHelper.startPage(pageNum, pageSize);
		
		List<TbStudent> list=tbStudentMapper.selectByExample(null);
		
		PageInfo<TbStudent> pi=new PageInfo<TbStudent>(list);//${pi.list}
		return pi;
	}


	@Override
	public void insertfile(StuFileKey file) {
		StuFile s=new StuFile();
		s.setStudentId(file.getStudentId());
		s.setTaskId(file.getTaskId());
	
		
		stuFileMapper.insert(s); 
		
	}

}
