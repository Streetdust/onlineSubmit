package edu.challenge.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTeacher;

public interface StudentService {
		
		//登录
		public TbStudent login(String stuid,String stupass);		
		
		public int yijiao(String studentId);
		public int weijiao(String stuId,Integer classId);
		
		public List<TbStudent> selectStu();		
		//修改用户对象
		public void updateStu(TbStudent stu);
		//根据id删除用户
		public void deleteStu(TbStudent stu);
		//添加用户
		public void addStu(TbStudent stu);
		//通过id获取用户对象
		public TbStudent getStuById(String stuid);
		//分页
		public PageInfo<TbStudent> selectStuPage(Integer pageNum,Integer pageSize);
		
		public List<TbTeacher> selectall();
		
		public void insertfile(StuFileKey file);
}
