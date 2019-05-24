package edu.challenge.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import edu.challenge.entity.TbTask;

public interface TaskService {
		
			//查询所有  因为是分页显示  此方法可以不用
			public List<TbTask> selectTask(Integer classId);			
			//修改
			public void updateTask(TbTask task);
			
			
			public void deleteTask(TbTask task);
			//添加
			public void addTask(TbTask task);
			//通过id和班级获取
			public List<TbTask> getTaskById(String courseid,Integer classid);
			//未交
			public List<TbTask> selectUnsubmit(String courseid,Integer classid,String sid);
			//已交
			public List<TbTask> selectSubmit(String courseid,Integer classid,String sid);
			//分页
			public PageInfo<TbTask> selectTaskPage(Integer pageNum,Integer pageSize);

		
}
