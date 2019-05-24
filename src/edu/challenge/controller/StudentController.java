package edu.challenge.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import edu.challenge.entity.StuFileKey;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTask;
import edu.challenge.service.StudentService;
import edu.challenge.service.TaskService;

@Controller
@RequestMapping("stuctlr")
public class StudentController {
	@Autowired
	StudentService studentService;
	@Autowired
	TaskService taskService;
	
	HttpServletRequest request;
	
	
	@RequestMapping("/updatexx.do")
	public ModelAndView updatexx(ModelAndView mav,HttpSession session,String studentId,String studentName,String studentPass,Integer classId){
		TbStudent stu1=new TbStudent(studentId,studentName,studentPass,classId);
		
		TbStudent nstu=studentService.getStuById(studentId);
		
		studentService.updateStu(stu1);
		
		TbStudent lstu=studentService.getStuById(studentId);
		
		System.out.println("nstu.getStudentPass():"+nstu.getStudentPass());
		System.out.println("lstu.getStudentPass():"+lstu.getStudentPass());
		
		if(!nstu.getStudentPass().equals(lstu.getStudentPass())){
			mav.setViewName("redirect:../login.jsp");
		}
		else{
			session.setAttribute("nowstu", lstu);
			mav.setViewName("redirect:../index-stu.jsp");
		}
		
		return mav;
	}
	
	
	@RequestMapping("/uploadimg.do")
	public ModelAndView uploadimg(ModelAndView mav,TbTask task, MultipartFile upload,HttpSession session)
			throws IllegalStateException, IOException{
		System.out.println("��ʼ�ϴ��ļ���");
		
		//���û��ѡ����ҵid ���޷������ύ
		if(task.getTaskId()==null){
			mav.setViewName("redirect:../index-stu.jsp?msg1=fail");		
		}
		else{
		if(upload!=null){
			String name=upload.getOriginalFilename();//��ȡ�ļ���
			//�û�ѡ���ļ���
			if(name!=null&&!name.equals("")){//�ַ�����Ϊ�գ��ַ�������Ҳ�����ڿ�       // 1.jpg
				
				//String path=session.getServletContext().getRealPath("upload");//���·��
				
//				String path="/Users/zxg/uploadTest"+'/'+task.getTaskId();
				String path=session.getServletContext().getInitParameter("studentFilePath")+'/'+task.getTaskId();
				File f=new File(path);
				if(!f.exists()){
					f.mkdir();
				}
				String ext=name.substring(name.lastIndexOf("."));//��չ����ȡ  ��һ�����  .jpg
				//name=System.currentTimeMillis()+ext;//����ϵͳ������   2345124.jpg
				TbStudent stu=(TbStudent)session.getAttribute("nowstu");
				name=stu.getStudentId()+stu.getStudentName()+ext;
				System.out.println("name==="+name);
				upload.transferTo(new File(path+"/"+name));//�����ļ���������
				//mav.addObject("pic",name);//�Ժ����õ����������
				StuFileKey file=new StuFileKey(stu.getStudentId(),task.getTaskId());
				studentService.insertfile(file);
				session.setAttribute("tijiao", studentService.yijiao(stu.getStudentId()));
				session.setAttribute("weijiao", studentService.weijiao(stu.getStudentId(), stu.getClassId()));
				session.setAttribute("notie", taskService.selectTask(stu.getClassId()));
			}
		}
		mav.setViewName("redirect:../index-stu.jsp");
		}
		
		return mav;
	}
	
	@RequestMapping("login.do")		
	public ModelAndView login(ModelAndView mav,String rememberMe, String userid, String password,HttpSession session, HttpServletResponse response){
		/*System.out.println("ѧ����:"+stu.getStudentId()+"�����ǣ�"+stu.getStudentPass());*/

		TbStudent nowstu=studentService.login(userid, password);
		
		if(nowstu!=null){
			session.setAttribute("nowstu", nowstu);
			session.setAttribute("tijiao", studentService.yijiao(userid));
			session.setAttribute("weijiao", studentService.weijiao(nowstu.getStudentId(), nowstu.getClassId()));
			
			session.setAttribute("notie", taskService.selectTask(nowstu.getClassId()));
			if("1".equals(rememberMe)){
				System.out.println(rememberMe);
				Cookie c1=new Cookie("userid", userid);
				c1.setMaxAge(7*24*60*60);//����
				c1.setPath("/");
				Cookie c2=new Cookie("password",password);
				c2.setMaxAge(7*24*60*60);
				c2.setPath("/");
				Cookie c3 = new Cookie("state", "student");
				c3.setMaxAge(7*24*60*60);
				c3.setPath("/");
				response.addCookie(c1);
				response.addCookie(c2);
				response.addCookie(c3);
			}
			
			mav.setViewName("redirect:../index-stu.jsp");//ת��				
		}else{
			mav.setViewName("redirect:../login.jsp?msg=fail");	
		}
		return mav;
	}
	
	@RequestMapping("/download.do")
	public void download(@RequestParam(value="filename")String filename,
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        //ģ���ļ���myfile.txtΪ��Ҫ���ص��ļ�  
        String path = "/Users/zxg/uploadTest"+'/'+filename;  
        //��ȡ������  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //ת�룬����ļ�����������  
        filename = URLEncoder.encode(filename,"UTF-8");  
        //�����ļ�����ͷ  
        response.addHeader("Content-Disposition", "attachment;filename=" + filename);    
        //1.�����ļ�ContentType���ͣ��������ã����Զ��ж������ļ�����    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }
	
	//�ж��ļ��Ƿ�Ϊ��
	private boolean saveFile(MultipartFile file){  
        if (!file.isEmpty()) {  
            try {  
                // �ļ�����·��  
                String filePath = request.getSession().getServletContext().getRealPath("/") 
                		+ "upload/"  
                        + file.getOriginalFilename();  
                // ת���ļ�  
                System.out.println("filePath:"+filePath);
                file.transferTo(new File(filePath));  
                return true;  
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
        return false;  
	}
	
	@RequestMapping("/filesUpload.do")  
    public String filesUpload(@RequestParam("files[]") MultipartFile[] files) {  
        //�ж�file���鲻��Ϊ�ղ��ҳ��ȴ���0  
        if(files!=null&&files.length>0){  
            //ѭ����ȡfile�����е��ļ�  
            for(int i = 0;i<files.length;i++){  
                MultipartFile file = files[i];  
                //�����ļ�  
                saveFile(file);  
            }  
        }  
        
        return "";  
    }  
	//��ʦ��ѧ���༶��Ϣ
	@RequestMapping("/selectall.do")
	public ModelAndView selectall(ModelAndView mav){
		//��ʦ
		mav.addObject("list1",studentService.selectall());
		//ѧ��
		mav.addObject("list2", studentService.selectStu());
		mav.setViewName("forward:../classInfo.jsp");
		return mav;
	}
	
}
