package edu.challenge.service;

import java.util.List;

import edu.challenge.entity.CourseClasses;
import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.StuTask;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTask;
import edu.challenge.entity.TbTeacher;
import edu.challenge.entity.TeacherClassKey;

public interface TeacherService {

	//��ʦ��¼
	public TbTeacher login(TbTeacher teacher);
	
	//��ʦ���и�����Ϣ�鿴
	public TbTeacher person(String teacherId);
	
	//��ʦ�޸ĸ�����Ϣ
	public void updateInfo(TbTeacher teacher);
	
	//��ʦ��������(�ļ����ϴ�),����task_id
	public int publicTask(TbTask task);
	
	//��ʦ���ݰ༶��ѯ���й���
	public List<TbTask> listTasks(Integer classId,String teacherId);
	
	public List<TbTask> showTasks(String teacherId);
	
	//��ѯ������������
	public TbTask selecTask(Integer taskId);
	
	//��ʦ���ݰ༶��ѯѧ������
	public int countStus(Integer classId);
	//��ʦ��stu_file���ѯ�༶��ҵ�ύ���
	public int countSubStus(Integer taskId);
	
	//��ʦɾ������
	public void deleteTask(Integer taskId);
	
	//��ʦ�޸Ĺ���
	public TbTask updateTask(TbTask task);
	
	//��ʦ����taskId��ѯѧ���ύ����ҵ
	public List<StuTask> showStuHomeworks(Integer taskId);

	
	
	//*����classId�鿴ѧ����Ϣ
	public List<TbStudent> showStudents(Integer classId);
	
	//�鿴�ύ����ѧ����Ϣ
	public List<StuFileKey> listStuFiles();
	
	
	//�ȸ�����ʦ��id��ȡ����ʦ��Ӧ�γ�id��Ȼ���ڸ�����������Ϣ�õ��༶id
	public List<TeacherClassKey> getCourses(String teacherId);
	
	//����
	public List<CourseClasses> getCourseClasses(String teacherId);
	
	//ͳ����ʦ�������Ĺ���
	public Integer countTasks(String teacherId);
		
}
