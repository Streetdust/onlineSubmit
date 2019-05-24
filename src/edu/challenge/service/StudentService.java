package edu.challenge.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTeacher;

public interface StudentService {
		
		//��¼
		public TbStudent login(String stuid,String stupass);		
		
		public int yijiao(String studentId);
		public int weijiao(String stuId,Integer classId);
		
		public List<TbStudent> selectStu();		
		//�޸��û�����
		public void updateStu(TbStudent stu);
		//����idɾ���û�
		public void deleteStu(TbStudent stu);
		//����û�
		public void addStu(TbStudent stu);
		//ͨ��id��ȡ�û�����
		public TbStudent getStuById(String stuid);
		//��ҳ
		public PageInfo<TbStudent> selectStuPage(Integer pageNum,Integer pageSize);
		
		public List<TbTeacher> selectall();
		
		public void insertfile(StuFileKey file);
}
