package edu.challenge.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;

import edu.challenge.entity.DepaMajorKey;
import edu.challenge.entity.TbAdmin;
import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbTeacher;
import edu.challenge.service.AdminService;
import edu.challenge.util.FileUpload;
import edu.challenge.util.HttpUtils;
import edu.challenge.util.Message;

@Controller
@RequestMapping("adminctlr")
@Scope("prototype")
public class AdminController {

	@Autowired
	AdminService adminService;

	@RequestMapping("login")
	public ModelAndView login(ModelAndView mav, String rememberMe, String userid, String password, HttpSession session, HttpServletResponse response) {
		//System.out.println("要登录的管理员账户:" + admin.getAdminName() + "，密码是:" + admin.getAdminPass());

		TbAdmin tbadmin = adminService.login(new TbAdmin(userid, password, null));
		System.out.println(tbadmin.toString());

		if (tbadmin != null) {
			session.setAttribute("nowadmin", tbadmin);
			if("1".equals(rememberMe)) {
				Cookie c1=new Cookie("userid", userid);
				c1.setMaxAge(7*24*60*60);//����
				c1.setPath("/");
				Cookie c2=new Cookie("password",password);
				c2.setMaxAge(7*24*60*60);
				c2.setPath("/");
				Cookie c3 = new Cookie("state", "admin");
				c3.setMaxAge(7*24*60*60);
				c3.setPath("/");
				response.addCookie(c1);
				response.addCookie(c2);
				response.addCookie(c3);
			}
			mav.setViewName("redirect:../index-admin.jsp");
		} else {
			mav.setViewName("redirect:../login.jsp?msg=fail");
		}
		return mav;

	}

	@RequestMapping(value = "searchAllClass")
	public @ResponseBody Map<String, Object> searchAllClass(ModelAndView mav, HttpServletRequest request) {
		System.out.println("进入搜素所有班级信息的方法");

		int pages = Integer.valueOf(request.getParameter("page"));
		int count = Integer.valueOf(request.getParameter("rows"));
		int page = (pages - 1) * count;
		List<TbClasses> list = adminService.searchAllClass(page, count);

		Map<String, Object> dates = new HashMap<String, Object>();
		dates.put("total", adminService.getAllClassNum());
		dates.put("rows", list);

//		System.out.println(dates);

		JSONObject json = new JSONObject(dates);

		return dates;

	}

	@RequestMapping(value = "deleteOneClassInfo")
	public @ResponseBody Map<String, String> deleteOneClassInfo(HttpServletRequest request) {
		System.out.println("进入到删除班级信息的方法");
		int classId = Integer.valueOf(request.getParameter("classId"));
		System.out.println("要删除的班级编号是:" + classId);
		int result = adminService.deleteOneClassInfo(classId);
		System.out.println("删除结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "删除成功";
		} else {
			results = "删除失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("deleteClassResulkt", results);
		return map;

	}

	@RequestMapping(value = "searchDepaInfo")
	public @ResponseBody Map<String, List<String>> searchDepaInfo() {
		System.out.println("进入到查询院系信息的方法");

		List<DepaMajorKey> list = new ArrayList<DepaMajorKey>();

		list = adminService.searchDepaInfo();

		List<String> allDepa = new ArrayList<String>();

		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i).getClassDepa().toString());
			if (allDepa.contains(list.get(i).getClassDepa())) {
			} else {
				allDepa.add(list.get(i).getClassDepa());
			}

		}

		Map<String, List<String>> map = new HashMap<String, List<String>>();
		map.put("allDepa", allDepa);

		return map;

	}

	@RequestMapping(value = "searchMajorInfo")
	public @ResponseBody Map<String, List<String>> searchMajorInfo(HttpServletRequest request) {
		System.out.println("进入到查询专业信息的方法");

		String depaname = request.getParameter("depaName");
		System.out.println(depaname);

		List<DepaMajorKey> list = new ArrayList<DepaMajorKey>();
		List<String> allMajor = new ArrayList<String>();

		list = adminService.searchMajorInfo(depaname);

		for (int i = 0; i < list.size(); i++) {
			String aa = list.get(i).getClassMajor().toString();
//			System.out.println(aa);
			allMajor.add(aa);

		}

		Map<String, List<String>> map = new HashMap<String, List<String>>();
		map.put("allMajor", allMajor);

		return map;

	}

	@RequestMapping(value = "searchClassInfo")
	public @ResponseBody Map<String, List<String>> searchClassInfo(HttpServletRequest request) {
		System.out.println("进入到查询班级信息的方法");

		String depaname = request.getParameter("depaName");
		String majorname = request.getParameter("majorName");

		List<TbClasses> list = new ArrayList<TbClasses>();
		List<String> allClass = new ArrayList<String>();

		list = adminService.searchAllClassInFo(depaname, majorname);

		for (int i = 0; i < list.size(); i++) {
			String aa = list.get(i).getClassNum().toString();
			if (allClass.contains(aa)) {
			} else {
				allClass.add(aa);
			}

		}

		Map<String, List<String>> map = new HashMap<String, List<String>>();
		map.put("allClass", allClass);

		return map;

	}

	@RequestMapping(value = "searchClassIdInfo")
	public @ResponseBody Map<String, Integer> searchClassIdInfo(HttpServletRequest request) {
		System.out.println("进入到查询班级信息的方法");

		String depaname = request.getParameter("depaName");
		String majorname = request.getParameter("majorName");
		String classname = request.getParameter("className");

		System.out.println(depaname + majorname + classname);

		int result = adminService.searchClassIdInfo(depaname, majorname, classname);

		System.out.println("查询到的班级编号为:" + result);

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("ClassId", result);

		return map;

	}

	@RequestMapping(value = "addOneClassInfo")
	public @ResponseBody Map<String, String> addOneClassInfo(HttpServletRequest request) {
		System.out.println("进入到添加班级信息的方法");

		String classNum = request.getParameter("classNum");
		String classDepa = request.getParameter("classDepa");
		String classMajor = request.getParameter("classMajor");

//		System.out.println(classNum+classDepa+classMajor);

		int result = adminService.addOneClassInfo(classNum, classDepa, classMajor);
		System.out.println("添加结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "添加成功";
		} else {
			results = "添加失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("addClassResult", results);
		return map;

	}

	@RequestMapping(value = "editClassInfo")
	public @ResponseBody Map<String, String> editClassInfo(TbClasses tbclass, HttpServletRequest request) {
		System.out.println("进入到编辑班级信息的方法");

		String classId = request.getParameter("classId");
		String classNum = request.getParameter("classNum");
		String classDepa = request.getParameter("classDepa");
		String classMajor = request.getParameter("classMajor");

		System.out.println(tbclass.toString());

		System.out.println(classId + classNum + classDepa + classMajor);

		int result = adminService.updateClassInfo(tbclass);
//		System.out.println("添加结果为:"+result);

		String results = null;
		if (result == 1) {
			results = "编辑成功";
		} else {
			results = "编辑失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("editClassResult", results);
		return map;

	}

	@RequestMapping(value = "searchAllStudent")
	public @ResponseBody Map<String, Object> searchAllStudent(ModelAndView mav, HttpServletRequest request) {
		System.out.println("进入搜素所有学生信息的方法");

		int pages = Integer.valueOf(request.getParameter("page"));
		int count = Integer.valueOf(request.getParameter("rows"));
		int page = (pages - 1) * count;
		List<TbStudent> list = adminService.searchAllStudent(page, count);

		Map<String, Object> dates = new HashMap<String, Object>();
		dates.put("total", adminService.getAllStuNum());
		dates.put("rows", list);

//		System.out.println(dates);

		JSONObject json = new JSONObject(dates);

		return dates;

	}

	@RequestMapping(value = "deleteOneStuInfo")
	public @ResponseBody Map<String, String> deleteOneStuInfo(HttpServletRequest request) {
		System.out.println("进入到删除学生信息的方法");
		String studentId = request.getParameter("studentId");
		System.out.println("要删除的学生编号是:" + studentId);
		int result = adminService.deleteOneStuInfo(studentId);
		System.out.println("删除结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "删除成功";
		} else {
			results = "删除失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("deleteStuResulkt", results);
		return map;

	}

	@RequestMapping(value = "stuIdCheck")
	public @ResponseBody Map<String, String> stuIdCheck(HttpServletRequest request) {
		System.out.println("进入到判断学号是否存在的方法");
		String studentId = request.getParameter("stuid");
		System.out.println("要查询的学生编号是:" + studentId);
		TbStudent stu = adminService.stuIdCheck(studentId);

		String results = null;
		if (stu != null) {
			results = "学号已存在";
		} else {
			results = "学号不存在，可以进行添加";
		}

		System.out.println("查询结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("stuIdCheck", results);
		return map;

	}

	@RequestMapping(value = "addOneStuInfo")
	public @ResponseBody Map<String, String> addOneStuInfo(HttpServletRequest request) {
		System.out.println("进入到添加学生信息的方法");

		String studentid = request.getParameter("studentid");
		String studentName = request.getParameter("studentName");
		String studentPass = request.getParameter("studentPass");
		int classId = Integer.parseInt(request.getParameter("classId"));

		TbStudent tbstu = new TbStudent();
		tbstu.setStudentId(studentid);
		tbstu.setStudentName(studentName);
		tbstu.setStudentPass(studentPass);
		tbstu.setClassId(classId);

		int result = adminService.addNewStu(tbstu);
		System.out.println("添加结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "添加成功";
		} else {
			results = "添加失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("addStuResult", results);
		return map;

	}

	@RequestMapping(value = "editStuInfo")
	public @ResponseBody Map<String, String> editStuInfo(TbStudent student, HttpServletRequest request) {
		System.out.println("进入到编辑学生信息的方法");

		String studentId = request.getParameter("studentId");
		String studentName = request.getParameter("studentName");
		String studentPass = request.getParameter("studentPass");
		int classId = Integer.parseInt(request.getParameter("classId"));

		System.out.println(student.toString());

		TbStudent students = new TbStudent();
		students.setStudentId(studentId);
		students.setStudentName(studentName);
		students.setStudentPass(studentPass);
		students.setClassId(classId);

		int result = adminService.updateStuInfo(students);
//		System.out.println("添加结果为:"+result);

		String results = null;
		if (result == 1) {
			results = "编辑成功";
		} else {
			results = "编辑失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("editStuResult", results);
		return map;

	}

	@RequestMapping(value = "searchAllTeacher")
	public @ResponseBody Map<String, Object> searchAllTeacher(ModelAndView mav, HttpServletRequest request) {
		System.out.println("进入搜素所有教师信息的方法");

		int pages = Integer.valueOf(request.getParameter("page"));
		int count = Integer.valueOf(request.getParameter("rows"));
		int page = (pages - 1) * count;
		List<TbTeacher> list = adminService.searchAllTeacher(page, count);

		Map<String, Object> dates = new HashMap<String, Object>();
		dates.put("total", adminService.getAllTeaNum());
		dates.put("rows", list);

//		System.out.println(dates);

		JSONObject json = new JSONObject(dates);

		return dates;

	}

	@RequestMapping(value = "teaIdCheck")
	public @ResponseBody Map<String, String> teaIdCheck(HttpServletRequest request) {
		System.out.println("进入到判断职工号是否存在的方法");
		String teacherId = request.getParameter("teaId");
		System.out.println("要查询的职工号是:" + teacherId);
		TbTeacher tea = adminService.teaIdCheck(teacherId);

		String results = null;
		if (tea != null) {
			results = "职工号已存在";
		} else {
			results = "职工号不存在，可以进行添加";
		}

		System.out.println("查询结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("teaIdCheck", results);
		return map;

	}

	@RequestMapping(value = "addOneTeaInfo")
	public @ResponseBody Map<String, String> addOneTeaInfo(HttpServletRequest request) {
		System.out.println("进入到添加教师信息的方法");

		String teaId = request.getParameter("teaId");
		String teaName = request.getParameter("teaName");
		String teaPass = request.getParameter("teaPass");
		String teaTel = request.getParameter("teaTel");

		TbTeacher tea = new TbTeacher();
		tea.setTeacherId(teaId);
		tea.setTeacherName(teaName);
		tea.setTeacherPass(teaPass);
		tea.setTeacherTel(teaTel);

		int result = adminService.addNewTea(tea);
		System.out.println("添加结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "添加成功";
		} else {
			results = "添加失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("addTeaResult", results);
		return map;

	}

	@RequestMapping(value = "deleteOneTeaInfo")
	public @ResponseBody Map<String, String> deleteOneTeaInfo(HttpServletRequest request) {
		System.out.println("进入到删除教师信息的方法");
		String teacherId = request.getParameter("teacherId");
		System.out.println("要删除的教师编号是:" + teacherId);
		int result = adminService.deleteOneTeaInfo(teacherId);
		System.out.println("删除结果为:" + result);

		String results = null;
		if (result == 1) {
			results = "删除成功";
		} else {
			results = "删除失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("deleteTeaResulkt", results);
		return map;

	}

	@RequestMapping(value = "editTeaInfo")
	public @ResponseBody Map<String, String> editTeaInfo(TbStudent student, HttpServletRequest request) {
		System.out.println("进入到编辑教师信息的方法");

		String teacherId = request.getParameter("teacherId");
		String teacherName = request.getParameter("teacherName");
		String teacherPass = request.getParameter("teacherPass");
		String teacherTel = request.getParameter("teacherTel");

//		System.out.println(student.toString());

		TbTeacher tea = new TbTeacher();
		tea.setTeacherId(teacherId);
		tea.setTeacherName(teacherName);
		tea.setTeacherPass(teacherPass);
		tea.setTeacherTel(teacherTel);

		int result = adminService.updateTeaInfo(tea);
//		System.out.println("添加结果为:"+result);

		String results = null;
		if (result == 1) {
			results = "编辑成功";
		} else {
			results = "编辑失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("editTeaResult", results);
		return map;

	}

	@RequestMapping("fileUpload")
	@ResponseBody
//    @Action(description="添加或更新流程需求单主表")
	public Map<String, String> fileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile[] files)
			throws IOException {
		int count = 0;
		int Allcount = 0;

		// 文件上传位置
		String rootPath = "/Users/zxg/uploadTest/";
		// 文件在服务器的绝对路径(若文件为多个，则以","隔开)
		String filePath = "";
		if (files != null && files.length != 0) {
			// 文件上传至服务器
			Message msg = FileUpload.fileUpload(rootPath, files);
			// 文件上传是否成功
			if (msg.getUploadSuccess()) {
				filePath = msg.getFilePath();

				try {
					// String encoding = "GBK";
					File excel = new File(filePath);
					if (excel.isFile() && excel.exists()) { // 判断文件是否存在

						String[] split = excel.getName().split("\\."); // .是特殊字符，需要转义！！！！！
						Workbook wb;
						// 根据文件后缀（xls/xlsx）进行判断
						if ("xls".equals(split[1])) {
							FileInputStream fis = new FileInputStream(excel); // 文件流对象
							wb = new HSSFWorkbook(fis);
						} else if ("xlsx".equals(split[1])) {
//		                	 FileInputStream fis = new FileInputStream(excel);   //文件流对象
							wb = new XSSFWorkbook(excel);
						} else {
							System.out.println("文件类型错误!");
							return null;
						}

						// 开始解析
						Sheet sheet = wb.getSheetAt(0); // 读取sheet 0

						int firstRowIndex = sheet.getFirstRowNum() + 1; // 第一行是列名，所以不读
						int lastRowIndex = sheet.getLastRowNum();
						Allcount = lastRowIndex;
						System.out.println("firstRowIndex: " + firstRowIndex);
						System.out.println("lastRowIndex: " + lastRowIndex);

						TbStudent stu = new TbStudent();

						for (int rIndex = firstRowIndex; rIndex <= lastRowIndex; rIndex++) { // 遍历行
							System.out.println("rIndex: " + rIndex);
							Row row = sheet.getRow(rIndex);
							if (row != null) {
								int firstCellIndex = row.getFirstCellNum();
								int lastCellIndex = row.getLastCellNum();
								for (int cIndex = firstCellIndex; cIndex < lastCellIndex; cIndex++) { // 遍历列
									Cell cell = row.getCell(cIndex);
									if (cell != null) {
										cell.setCellType(CellType.STRING);

										switch (cIndex) {
										case 0:
											stu.setStudentId(cell.toString());
											break;
										case 1:
											stu.setStudentName(cell.toString());
											break;
										case 2:
											stu.setStudentPass(cell.toString());
											break;
										case 3:
											stu.setClassId(Integer.parseInt(cell.toString()));
											break;

										}
									}

								}
								System.out.println("学生:" + stu.getStudentId() + stu.getStudentName());
								int result = adminService.addNewStu(stu);
								count = count + result;

							}
						}

					} else {
						System.out.println("找不到指定的文件");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		String results = null;
		if (count == Allcount) {
			results = "添加成功";
		} else {
			results = "添加失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("addStuInfoByExcel", results);
		return map;
	}

	@RequestMapping(value = "loginOff")
	public ModelAndView login(ModelAndView mav, HttpSession session) {
		TbAdmin admin = (TbAdmin) session.getAttribute("nowadmin");

		System.out.println(admin.getAdminName() + ",安全退出");
		session.removeAttribute("nowadmin");
		mav.setViewName("redirect:../login.jsp");

		return mav;

	}

	@RequestMapping(value = "SendCaptcha")
	public @ResponseBody Map<String,Object> SendCaptcha(HttpServletRequest request) {
		String host = "http://dingxin.market.alicloudapi.com";
		String path = "/dx/sendSms";
		String method = "POST";
		String appcode = "4651f4171ccf47bfb8ca9b5fa12137b6";

		String phone = request.getParameter("adminTel");
		String code = request.getParameter("code");

		System.out.println("要发送的手机号是:" + phone + ",验证码是" + code);

		Map<String, String> headers = new HashMap<String, String>();
		// 最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
		headers.put("Authorization", "APPCODE " + appcode);
		Map<String, String> querys = new HashMap<String, String>();
		querys.put("mobile", phone);
		querys.put("param", "code:" + code);
		querys.put("tpl_id", "TP19052212");
		Map<String, String> bodys = new HashMap<String, String>();

		try {
			/**
			 * 重要提示如下: HttpUtils请从
			 * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
			 * 下载
			 *
			 * 相应的依赖请参照
			 * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
			 */
			HttpResponse response = HttpUtils.doPost(host, path, method, headers, querys, bodys);
//			System.out.println(response.toString());
			// 获取response的body
//			System.out.println(EntityUtils.toString(response.getEntity()));
			String info = EntityUtils.toString(response.getEntity());

			Map<String,Object> map = JSONObject.parseObject(info, Map.class);
			

			System.out.println(map);

			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	@RequestMapping(value = "editAdmPhone")
	public @ResponseBody Map<String, String> editAdmInPhone(HttpServletRequest request,HttpSession session) {
		System.out.println("进入到编辑管理员手机号信息的方法");

		String adminName = request.getParameter("adminName");
		String adminTel = request.getParameter("adminTel");
		String adminPass= request.getParameter("adminPass");
		
		

		TbAdmin adm=new TbAdmin();
		adm.setAdminName(adminName);
		adm.setAdminTel(adminTel);
		adm.setAdminPass(adminPass);
		

		System.out.println(adm.getAdminName()+adm.getAdminPass()+adm.getAdminTel());
		
		int result = adminService.editAdmPhone(adm);
//		System.out.println("添加结果为:"+result);

		String results = null;
		if (result == 1) {
			results = "编辑成功";
			TbAdmin newAdmin=adminService.selectAdminInfo(adminName);
			session.setAttribute("nowadmin", newAdmin);
			
		} else {
			results = "编辑失败";
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("editAdmPhoneResult", results);
		return map;

	}
	
	@RequestMapping(value = "classNameCheck")
	public @ResponseBody Map<String, String> classNameCheck(HttpServletRequest request) {
		System.out.println("进入到判断班级名称是否存在的方法");
		String newClassName = request.getParameter("newClassName");
		String newDepa = request.getParameter("newDepa");
		String newMajor = request.getParameter("newMajor");
		
		System.out.println("要查询的班级名称是:" + newClassName);
		TbClasses tea = adminService.classNameCheck(newClassName,newDepa,newMajor);
		

		String results = null;
		if (tea != null) {
			results = "班级名称已存在";
		} else {
			results = "班级名称不存在，可以进行添加";
		}

		System.out.println("查询结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("classNameCheck", results);
		return map;

	}
	
	
	@RequestMapping(value = "exportStuInfoByExcel")
	public @ResponseBody Map<String, String> exportStuInfoByExcel(HttpServletRequest request) {
		System.out.println("进入到导出学生信息的方法");
		
		List<TbStudent> list=adminService.searchAllStudentToExcel();
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = null;
//		JSONArray array = JSONArray.parseArray(strBuff.toString());
		String title = null;
		for (int n = 0; n <= list.size(); n++) {
//			System.out.println(array.get(n));
			if (n == 0) {
				title = "学生信息统计表";
				sheet = wb.createSheet("sheet1");
				HSSFRow row = sheet.createRow(0);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue("学号");
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue("姓名");
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue("班级编号");
				
				
			}
			if (n >= 1) {
				HSSFRow row = sheet.createRow(n);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue(list.get(n - 1).getStudentId());
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue(list.get(n - 1).getStudentName());
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue(list.get(n - 1).getClassId());
				

			}
		}
		try {
			wb.write(new FileOutputStream(new File("/Users/zxg/uploadTest/" + title + ".xls")));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		

		String results = null;
		if (list != null) {
			results = "学生信息导出成功";
		} else {
			results = "发生异常，导出失败，请重试！";
		}

		System.out.println("导出结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("exportStuInfoByExcelResult", results);
		return map;

	}
	
	@RequestMapping(value = "exportClassInfoByExcel")
	public @ResponseBody Map<String, String> exportClassInfoByExcel(HttpServletRequest request) {
		System.out.println("进入到导出班级信息的方法");
		
		List<TbClasses> list=adminService.searchAllClassToExcel();
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = null;
//		JSONArray array = JSONArray.parseArray(strBuff.toString());
		String title = null;
		for (int n = 0; n <= list.size(); n++) {
//			System.out.println(array.get(n));
			if (n == 0) {
				title = "班级信息统计表";
				sheet = wb.createSheet("sheet1");
				HSSFRow row = sheet.createRow(0);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue("班级编号");
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue("班级名称");
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue("院系");
				HSSFCell cell3 = row.createCell(3);
				cell3.setCellValue("专业");
				
				
			}
			if (n >= 1) {
				HSSFRow row = sheet.createRow(n);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue(list.get(n - 1).getClassId());
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue(list.get(n - 1).getClassNum());
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue(list.get(n - 1).getClassDepa());
				HSSFCell cell3 = row.createCell(3);
				cell3.setCellValue(list.get(n - 1).getClassMajor());
				

			}
		}
		try {
			wb.write(new FileOutputStream(new File("/Users/zxg/uploadTest/" + title + ".xls")));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		

		String results = null;
		if (list != null) {
			results = "班级信息导出成功";
		} else {
			results = "发生异常，导出失败，请重试！";
		}

		System.out.println("导出结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("exportClassInfoByExcelResult", results);
		return map;

	}
	
	@RequestMapping(value = "exportTeaInfoByExcel")
	public @ResponseBody Map<String, String> exportTeaInfoByExcel(HttpServletRequest request) {
		System.out.println("进入到导出教师信息的方法");
		
		List<TbTeacher> list=adminService.searchAllTeaToExcel();
		System.out.println(list.size());
		
		HSSFWorkbook wb = new HSSFWorkbook();
		HSSFSheet sheet = null;
//		JSONArray array = JSONArray.parseArray(strBuff.toString());
		String title = null;
		for (int n = 0; n <= list.size(); n++) {
//			System.out.println(array.get(n));
			if (n == 0) {
				title = "教师信息统计表";
				sheet = wb.createSheet("sheet1");
				HSSFRow row = sheet.createRow(0);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue("教师编号");
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue("教师名称");
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue("教师电话");
				
				
				
			}
			if (n >= 1) {
				HSSFRow row = sheet.createRow(n);
				HSSFCell cell = row.createCell(0);
				cell.setCellValue(list.get(n - 1).getTeacherId());
				HSSFCell cell1 = row.createCell(1);
				cell1.setCellValue(list.get(n - 1).getTeacherName());
				HSSFCell cell2 = row.createCell(2);
				cell2.setCellValue(list.get(n - 1).getTeacherTel());
				
				

			}
		}
		try {
			wb.write(new FileOutputStream(new File("/Users/zxg/uploadTest/" + title + ".xls")));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		

		String results = null;
		if (list != null) {
			results = "教师信息导出成功";
		} else {
			results = "发生异常，导出失败，请重试！";
		}

		System.out.println("导出结果为:" + results);

		Map<String, String> map = new HashMap<String, String>();
		map.put("exportTeaInfoByExcelResult", results);
		return map;

	}


}
