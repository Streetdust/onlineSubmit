package edu.challenge.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import edu.challenge.entity.TbTask;

public interface TaskService {
		
			//��ѯ����  ��Ϊ�Ƿ�ҳ��ʾ  �˷������Բ���
			public List<TbTask> selectTask(Integer classId);			
			//�޸�
			public void updateTask(TbTask task);
			
			
			public void deleteTask(TbTask task);
			//���
			public void addTask(TbTask task);
			//ͨ��id�Ͱ༶��ȡ
			public List<TbTask> getTaskById(String courseid,Integer classid);
			//δ��
			public List<TbTask> selectUnsubmit(String courseid,Integer classid,String sid);
			//�ѽ�
			public List<TbTask> selectSubmit(String courseid,Integer classid,String sid);
			//��ҳ
			public PageInfo<TbTask> selectTaskPage(Integer pageNum,Integer pageSize);

		
}
