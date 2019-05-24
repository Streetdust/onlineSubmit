package edu.challenge.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.challenge.entity.CourseClasses;
import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.StuTask;
import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTask;
import edu.challenge.entity.TbTeacher;
import edu.challenge.entity.TeacherClassKey;
import edu.challenge.service.TeacherService;
import edu.challenge.util.FileToolUtils;

@Controller
@RequestMapping("teacherctlr")
@Scope("prototype")
public class TeacherController {
	
	@Resource
	TeacherService teacherService;
	
	@RequestMapping("login")
	public ModelAndView login(ModelAndView mav,String userid,String password,HttpSession session, String rememberMe,HttpServletResponse response){
		System.out.println("controller��login����Ϣ��" + userid +"," + password);
		TbTeacher teacher = new TbTeacher(userid, null, password, null);
		TbTeacher tbTeacher = teacherService.login(teacher);
		System.out.println("==============\nRemember: " + rememberMe);
		if(tbTeacher != null){
			if("1".equals(rememberMe)){//��ס����
				System.out.println("�����ס����");
				Cookie userId = new Cookie("userid", userid);
				Cookie pwd = new Cookie("password", password);
				Cookie state = new Cookie("state", "teacher");
				userId.setMaxAge(7 * 24 * 60 * 60);
				pwd.setMaxAge(7 * 24 * 60 * 60);
				state.setMaxAge(7 * 24 * 60 * 60);
				userId.setPath("/");
				pwd.setPath("/");
				state.setPath("/");
				response.addCookie(userId);
				response.addCookie(pwd);
				response.addCookie(state);
			}
			List<TbTask> showTasks = teacherService.showTasks(tbTeacher.getTeacherId());
			//����һ�����ڷ�������ҵ��ʾ����ҳ
			long nowTime = new Date().getTime();
			long gapTime = 7 * 24 * 60 * 60 * 1000;
			Iterator<TbTask> iterator = showTasks.iterator();
			List<CourseClasses> ccClasses = teacherService.getCourseClasses(userid);
			
			while(iterator.hasNext()){
				long release = iterator.next().getTaskRelease().getTime();
				if((nowTime - release) >= gapTime){
					iterator.remove();
				}
			}
			session.setAttribute("recentTasks", showTasks);
			session.setAttribute("nowteacher", tbTeacher);
			session.setAttribute("size", teacherService.showTasks(tbTeacher.getTeacherId()).size());
			session.setAttribute("courseClass", ccClasses);
			
			mav.setViewName("redirect:../index-teacher.jsp");
		} else {
			mav.setViewName("redirect:../login.jsp?msg=fail");
		}
		return mav;
	}
	
	@RequestMapping("person")
	public ModelAndView person(ModelAndView mav,String teacherId){
		teacherService.person(teacherId);
		mav.setViewName("redirect:../user_profile.jsp");
		return mav;
	}
	
	//�޸���Ϣ
	@RequestMapping("updateInfo")
	public ModelAndView updateInfo(ModelAndView mav,TbTeacher teacher,HttpSession session,HttpServletResponse response){
		System.out.println("�޸ĸ�����Ϣ");
		System.out.println(teacher);
		if(teacher.getTeacherPass() != null  && !"".equals(teacher.getTeacherPass())){
			System.out.println("�޸�����");
			session.removeAttribute("nowteacher");
			//���cookies
			Cookie pwd = new Cookie("password", "");
			pwd.setMaxAge(0);
			pwd.setPath("/");
			response.addCookie(pwd);
			teacherService.updateInfo(teacher);
			mav.setViewName("redirect:../login.jsp");
			return mav;
		}
		teacher.setTeacherPass(null);
		teacherService.updateInfo(teacher);
		session.setAttribute("nowteacher", teacher);
		System.out.println("�޸ĺ��ʦ��Ϣ��" + teacher);
		System.out.println("tid:" + teacher.getTeacherId());
		mav.setViewName("redirect:person.do?teacherId=" + teacher.getTeacherId());
		return mav;
	}
	@RequestMapping("publicTask")
	public ModelAndView publicTask(ModelAndView mav,TbTask task,HttpServletRequest req,MultipartFile file, String preDate,String sufDate){
		System.out.println("��ʦ��ʼ��������");
		task.setTaskRelease(new Date()); 
		if("".equals(preDate) || preDate == null){
			if(!"".equals(sufDate) && sufDate != null){
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date td = new Date();
				String pre = sdf.format(td);
				try {
					task.setTaskAbort(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(pre + " " + sufDate));
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
		} else{
			if("".equals(sufDate) || sufDate == null) {
				try {
					task.setTaskAbort(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(preDate + " 23:00:00"));
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
		}
        try {
        	task.setTaskAbort(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(preDate + " " + sufDate));
        	System.out.println(task.getTaskAbort());
        } catch (ParseException e) {
			e.printStackTrace();
		}
		System.out.println(task);
		if(file != null && task.getFileName() != null){
			String orgname = file.getOriginalFilename();
			if(orgname != null && "".equals(orgname)){
				System.out.println("�ļ�����" + orgname);
				String path = req.getServletContext().getInitParameter("teacherFilePath");
				String suf = orgname.substring(orgname.lastIndexOf("."), orgname.length());
				String name = UUID.randomUUID().toString() + suf;
				File realFile = new File(path + "/" +  name);
				try {
					file.transferTo(realFile);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				task.setFileName(name);
			}
		}
		teacherService.publicTask(task);
		File dirFile = new File(req.getServletContext().getInitParameter("studentFilePath") + "/" + task.getTaskId());
		dirFile.mkdir();
		System.out.println("�ύ��" + task);
		mav.setViewName("redirect:../index-teacher.jsp");
		return mav;
		
	}
	
	//���ݰ༶��ѯ��ҵ�����б�
	@RequestMapping("listTasks")
	public ModelAndView listTasks(ModelAndView mav,HttpSession session,TbTask task){
		System.out.println("������ҵ�����б���");
		System.out.println(task);
		String teacherId = ((TbTeacher)(session.getAttribute("nowteacher"))).getTeacherId();
		if(task.getClassId() == -1){
			System.out.println("��������");
			List<TbTask> showTasks = teacherService.showTasks(teacherId);
			
			session.setAttribute("totalTasks", showTasks);
			mav.setViewName("redirect:../addNewNotice.jsp");
			return mav;
		}
		List<TbTask> listTasks = teacherService.listTasks(task.getClassId(),teacherId);
		
		if (listTasks != null && listTasks.size() > 0) {
			session.setAttribute("tasks", listTasks);
			mav.setViewName("redirect:../allHomework-teacher.jsp");
		} else {
			mav.setViewName("redirect:../noNotice.jsp");
		}
		return mav;
	}
	
	//�鿴��ҵ�ύ������ã�
	@RequestMapping("showStuHomeworks")
	public ModelAndView showStuHomeworks(ModelAndView mav,StuFileKey sfk,HttpSession session,Integer classId){
		List<StuTask> stuTasks = teacherService.showStuHomeworks(sfk.getTaskId());
		session.setAttribute("stuTasks", stuTasks);
		session.setAttribute("total", teacherService.countStus(classId));
		session.setAttribute("subTotal", teacherService.countSubStus(sfk.getTaskId()));
		mav.setViewName("redirect:../allHomework-students.jsp");
		return mav;
	}
	
	//��ʦ���ض�Ӧ��ҵ�����ļ�
	@RequestMapping("downTask")
	public ResponseEntity<byte[]> downTask(String fileName,Integer taskId,String fileType,HttpServletRequest request) throws IOException {  
	    HttpHeaders headers = new HttpHeaders();  
	    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM); 
	    File file = null;
	    String path;
	    if("teacher".equals(fileType)){
	    	path = request.getServletContext().getInitParameter("teacherFilePath");
	    	file = new File(path + "/" + fileName);
	    }else {
	    	file = FileToolUtils.getStudentFile(fileName, taskId, request.getServletContext());
		}
	    headers.setContentDispositionFormData("attachment", URLEncoder.encode(file.getName(), "UTF-8")); 
	    return new ResponseEntity<byte[]> (FileUtils.readFileToByteArray(file),headers, HttpStatus.OK); 
	}
	
	@RequestMapping("downAllTasks")
	public ResponseEntity<byte[]> downAllTasks(HttpServletRequest request) throws IOException{
		File zipFile = FileToolUtils.zipFiles(request);
		HttpHeaders headers = new HttpHeaders();  
	    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM); 
	    headers.setContentDispositionFormData("attachment", URLEncoder.encode(zipFile.getName(), "UTF-8")); 
	    return new ResponseEntity<byte[]> (FileUtils.readFileToByteArray(zipFile),headers, HttpStatus.OK);
	}
	
	@RequestMapping("selectTask")
	public ModelAndView selectTask(ModelAndView mav,TbTask task,HttpSession session){
		System.out.println("��������");
		session.setAttribute("selectTask", teacherService.selecTask(task.getTaskId()));
		//TODO
		System.out.println(teacherService.selecTask(task.getTaskId()));
		mav.setViewName("redirect:../detailNotice.jsp");
		return mav;
	}
	
	//�޸Ĺ���
	@RequestMapping("delTask")
	public ModelAndView deleteTask(ModelAndView mav,TbTask task){
		System.out.println("���޸��˹���");
		teacherService.updateTask(task);
		mav.setViewName("redirect:selectTask.do?taskId=" + task.getTaskId());		//���ز�ѯ����
		return mav;
		
	}
	
	@RequestMapping("getCourse")
	public ModelAndView getCourses(ModelAndView mav,TeacherClassKey teacClasses,HttpSession session){
		System.out.println("��ѯ��ʦ�γ�");
		
		session.setAttribute("courseClass", teacherService.getCourseClasses(teacClasses.getTeacherId()));
		mav.setViewName("redirect:../index-teacher.jsp");
		return mav;
		
	}
	
	public ModelAndView listStuFiles(ModelAndView mav,HttpSession session){
		System.out.println("��ѯ�ύѧ����ҵ");
		List<StuFileKey> stuFiles = teacherService.listStuFiles();
		session.setAttribute("stuFiles", stuFiles);
		mav.setViewName("redirect:../allHomework-teacher.jsp");
		return mav;
		
	}
	
	//���ݰ༶��ʦ�����༶��ѯѧ��
	@RequestMapping("getStudents")
	public ModelAndView getStudents(ModelAndView mav,Integer classId,HttpSession session){
		System.out.println("��ѯѧ����Ϣ");
		List<TbStudent> students = teacherService.showStudents(classId);
		if(students != null){
			session.setAttribute("classStus", students);
		}
		mav.setViewName("redirect:../allStudents.jsp");
		return mav;
	}
	
	

}
