package edu.challenge.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import edu.challenge.entity.TbTask;
import edu.challenge.entity.TbTaskExample;
import edu.challenge.entity.TbTaskExample.Criteria;
import edu.challenge.mapper.StuFileMapper;
import edu.challenge.mapper.TbTaskMapper;
import edu.challenge.service.TaskService;
@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	TbTaskMapper tbTaskMapper;
	@Autowired
	StuFileMapper stuFileMapper;
	
		
		
		@Override
		public List<TbTask> selectTask(Integer classId) {
			TbTaskExample example=new TbTaskExample();
			Criteria c=example.createCriteria();
			c.andClassIdEqualTo(classId);
			
			return tbTaskMapper.selectByExample(example);
		}
		//修改学生
		@Override
		public void updateTask(TbTask task) {
			tbTaskMapper.updateByPrimaryKey(task);
		}
		//根据id删除学生
		@Override
		public void deleteTask(TbTask task) {
			tbTaskMapper.deleteByPrimaryKey(task.getTaskId());

		}
		//添加学生
		@Override
		public void addTask(TbTask task) {
			tbTaskMapper.insert(task);

		}

		@Override
		public List<TbTask> getTaskById(String courseId,Integer classId) {
			
			return tbTaskMapper.selectByPrimaryKey(courseId,classId);
		}

		@Override
		public PageInfo<TbTask> selectTaskPage(Integer pageNum, Integer pageSize) {
			
			PageHelper.startPage(pageNum, pageSize);
			
			List<TbTask> list=tbTaskMapper.selectByExample(null);
			
			PageInfo<TbTask> pi=new PageInfo<TbTask>(list);//${pi.list}
			return pi;
		}
		
		//未交
		@Override
		public List<TbTask> selectUnsubmit(String courseid, Integer classid,String sid) {
			List<TbTask> list=tbTaskMapper.selectUnsubmit(courseid, classid,sid);
			return list;
		}
		//已交
		@Override
		public List<TbTask> selectSubmit(String courseid, Integer classid ,String studentId) {
			List<TbTask> list=tbTaskMapper.selectSubmit(courseid, classid ,studentId);
			return list;
		}
		
		
		
}
