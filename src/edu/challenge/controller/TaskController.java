package edu.challenge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.challenge.service.TaskService;

@Controller
@RequestMapping("/taskctlr")
public class TaskController {

	@Autowired
	TaskService taskService;
	
	@RequestMapping("/selectTask.do")
	public ModelAndView selectTask(ModelAndView mav,@RequestParam(value="bj",required=true)Integer bj,@RequestParam(value="xk",required=true)String xk){
		System.out.println(xk);
		
		if(xk.equals("chinese")){
			mav.addObject("list", taskService.getTaskById("chinese",bj));
		}
		else if(xk.equals("math")){
			mav.addObject("list", taskService.getTaskById("math",bj));
		}
		else if(xk.equals("english")){
			mav.addObject("list", taskService.getTaskById("english",bj));
		}
		else if(xk.equals("computer")){
			mav.addObject("list", taskService.getTaskById("computer",bj));
		}
		mav.setViewName("forward:../allHomework.jsp");
		return mav;
	}
	
	@RequestMapping("/unsubmit.do")
	public ModelAndView unsubmit(ModelAndView mav,@RequestParam(value="bj",required=true)Integer bj,@RequestParam(value="xk",required=true)String xk,@RequestParam(value="xh",required=true)String xh){
		if(xk.equals("chinese")){
			mav.addObject("list", taskService.selectUnsubmit("chinese",bj,xh));
		}
		else if(xk.equals("math")){
			mav.addObject("list", taskService.selectUnsubmit("math",bj,xh));
		}
		else if(xk.equals("english")){
			mav.addObject("list", taskService.selectUnsubmit("english",bj,xh));
		}
		else if(xk.equals("computer")){
			mav.addObject("list", taskService.selectUnsubmit("computer",bj,xh));
		}
		mav.setViewName("forward:../unSubmitWork.jsp");
		return mav;

	}
	
	
	@RequestMapping("/submit.do")
	public ModelAndView submit(ModelAndView mav,@RequestParam(value="bj",required=true)Integer bj,@RequestParam(value="xk",required=true)String xk
			,@RequestParam(value="xh",required=true)String xh){
		if(xk.equals("chinese")){
			mav.addObject("list", taskService.selectSubmit("chinese",bj,xh));
		}
		else if(xk.equals("math")){
			mav.addObject("list", taskService.selectSubmit("math",bj,xh));
		}
		else if(xk.equals("english")){
			mav.addObject("list", taskService.selectSubmit("english",bj,xh));
		}
		else if(xk.equals("computer")){
			mav.addObject("list", taskService.selectSubmit("computer",bj,xh));
		}
		mav.setViewName("forward:../submitWork.jsp");
		return mav;
	}
	
	
	
	
	
	
	
}
