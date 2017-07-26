
package com.social.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.social.domain.SocialCommand;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.member.validator.IdNotDuplicatedValidator;
import kr.spring.member.validator.MemberValidator;

import com.social.service.SocialService;
import com.social.common.CommandMap;

import kr.spring.util.PagingUtil;

@Controller
@RequestMapping("/self")
@SessionAttributes("social")
public class SocialMainController {
	
	//
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="socialService")
	private SocialService socialService;

   @Autowired
   private IdNotDuplicatedValidator idNodDuplicatedValidator;
  
    //
	   @ModelAttribute("social")   //
	   public SocialCommand initCommand(){
	      return new SocialCommand();
	   }
	
	
	@RequestMapping("/step.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage) {
		
		if(log.isDebugEnabled()) {
			log.debug("pageNum : " + currentPage);
		}
		
//		int count = socialService.getMemberCount();
		
//		PagingUtil page = new PagingUtil(currentPage,count,10,10,"list.do");
		
		List<SocialCommand> list = null;
//		if(count > 0) {
			
//			Map<String,Object> map = new HashMap<String,Object>();
			
//			map.put("start", page.getStartCount());
//s			map.put("end", page.getEndCount());
			
//			list = socialService.getMemberList(map);
//		} else {
//			list = Collections.emptyList();
//		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/social/step_main");
//		mav.addObject("count", count);
//		mav.addObject("list",list);
//		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	
	@RequestMapping("/stepForm.do")
	public  ModelAndView Stepform(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result) {
		
		if(log.isDebugEnabled()) {
//			log.debug("pageNum : " + currentPage);
		}

			
			Map<String,Object> map = new HashMap<String,Object>();
			 Logger log = Logger.getLogger(this.getClass());	   
		  SocialCommand social = socialService.getStepList1(map);

		    
			log.debug("social : " + social);
		return new ModelAndView("/social/step1","social",social);
	}	
	    @RequestMapping("/stepFrom1.do")
	    public ModelAndView stepFrom1(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step1","social",social);
	   }
	    @RequestMapping("/stepFrom2.do")
	    public ModelAndView stepFrom2(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step2","social",social);
	   }		   
	    @RequestMapping("/stepFrom3.do")
	    public ModelAndView stepFrom3(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step3","social",social);
	   }
	    @RequestMapping("/stepFrom4.do")
	    public ModelAndView stepFrom4(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step4","social",social);
	   }
	    @RequestMapping("/stepFrom5.do")
	    public ModelAndView stepFrom5(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step5","social",social);
	   }
	    @RequestMapping("/stepFrom6.do")
	    public ModelAndView stepFrom6(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step6","social",social);
	   }	    
	    @RequestMapping("/stepFrom7.do")
	    public ModelAndView stepFrom7(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
		   return new ModelAndView("/social/step7","social",social);
	   }	    
	    @RequestMapping("/stepFrom8.do")
	    public ModelAndView stepFrom8(@RequestParam("kpi_seq") int kpi_seq, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+kpi_seq);
	//	   int kpi_seq = kpi_seq;
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList3=============:"+kpi_seq);
		   return new ModelAndView("/social/step8","social",social);
	   }		    
	    
	   //최초 자가진단 정보 등록. 
		   @RequestMapping(value="/insertstep.do",method=RequestMethod.GET)
		   public ModelAndView submit(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result) {
			   ModelAndView mv = new ModelAndView("redirect:stepForm.do");
//		   ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");  
			    Logger log = Logger.getLogger(this.getClass());	   
		   if(log.isDebugEnabled()) {
			   log.debug("socialCommand : " + socialCommand);
		   }
		   log.debug("socialCommand : " + socialCommand);
		   socialService.insertSocial(socialCommand);

		 
		   return mv;
	   }
   
		   
		   
		   
	   
	    @RequestMapping(value="/step2.do")
	    public ModelAndView submit(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	   //(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep1(socialCommand);
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("getStepList2=============:"+kpi_seq);
;
		   return new ModelAndView("/social/step2","social",social);

	   }
	    @RequestMapping("/step3.do")
	    public ModelAndView stepUpdate(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep2(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step3.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step3","social",social);

	   }
	    @RequestMapping("/step4.do")
	    public ModelAndView stepUpdate3(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep3(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step4.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step4","social",social);

	   }		    
	    @RequestMapping("/step5.do")
	    public ModelAndView stepUpdate4(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep4(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step5.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step5","social",social);

	   }
	    @RequestMapping("/step6.do")
	    public ModelAndView stepUpdate5(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep5(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step6.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step6","social",social);

	   }
	    @RequestMapping("/step7.do")
	    public ModelAndView stepUpdate6(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep6(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step7.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step7","social",social);

	   }
	    @RequestMapping("/step8.do")
	    public ModelAndView stepUpdate7(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep7(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   int kpi8 = socialCommand.getKpi_form8_pay();
		   SocialCommand social = socialService.getStepList2(kpi_seq);
		   System.out.println("step8.do=============:"+kpi_seq);
		   System.out.println("step8.getKpi_form8_pay=============:"+kpi8);
		   return new ModelAndView("/social/step8","social",social);

	   }
	    @RequestMapping("/step9.do")
	    public ModelAndView stepUpdate8(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep8(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepList3(kpi_seq);
		   System.out.println("step9.do=============:"+kpi_seq);
		   return new ModelAndView("/social/step9","social",social);

	   }		    
	    @RequestMapping("/stepResult.do")
	    public ModelAndView stepUpdate9(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	    	System.out.println("socialCommand=============:"+socialCommand);
		   socialService.updateStep9(socialCommand);

		   
		   int kpi_seq = socialCommand.getKpi_seq();
		   SocialCommand social = socialService.getStepResult(kpi_seq);
		   
		   SocialCommand ment = socialService.resultMent(kpi_seq);
		   SocialCommand tlist = socialService.resultSteptop(kpi_seq);
		   SocialCommand llist = socialService.resultSteplow(kpi_seq);
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("/social/stepResult");
		   mv.addObject("ment", ment);
		   mv.addObject("llist", llist);
		   mv.addObject("tlist", tlist); 
		   mv.addObject("social", social);
//		   ModelAndView mvv = new ModelAndView();
//		   mv.setViewName("/social/stepResult");
//		   mv.addObject("social", social);
		   
		  
//		   ModelAndView mvs = new ModelAndView();
//		   mv.setViewName("/social/stepResult");
//		   mv.addObject("llist", llist);
//		   
		   System.out.println("step9.do=============:"+kpi_seq);
	//	   return new ModelAndView("/social/stepResult","social",social);
		
//		   return ModelAndView;
		   return mv;
	   }
	    @RequestMapping(value = "/gsonList1.do", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	    public @ResponseBody String gsonList1(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	        Gson gson = new Gson();
	        int kpi_seq = socialCommand.getKpi_seq();
	        List<SocialCommand> list1 = null;
	        Map<String,Object> map1 = new HashMap<String,Object>();
	        map1.put("kpi_seq",kpi_seq);
	        list1 = socialService.chartAllSocialList(map1);
	        
	        List<SocialCommand> list2 = null;
	        Map<String,Object> map2 = new HashMap<String,Object>();
	        map2.put("kpi_seq",kpi_seq);
	        list2 = socialService.chartAllTotal(map2);
	        
	        List<SocialCommand> list3 = null;
	        Map<String,Object> map3 = new HashMap<String,Object>();
	        map3.put("kpi_seq",kpi_seq);
	        list3 = socialService.chartAllMyTotal(map3);
	    //    List<GsonDto> list = gsonDao.getJoblist();
	        System.out.println("socialCommand==list1===========:"+list1);
	   //     System.out.println("socialCommand==list2===========:"+list2);
	   //     System.out.println("socialCommand==list3===========:"+list3);
	         gson.toJson(list1);
	         gson.toJson(list2);
	         gson.toJson(list3);
	         return gson.toJson(list1);
	    }	    
	    @RequestMapping(value = "/gsonList2.do", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	    public @ResponseBody String gsonList2(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	        Gson gson = new Gson();
	        int kpi_seq = socialCommand.getKpi_seq();
	        List<SocialCommand> list1 = null;
	        Map<String,Object> map1 = new HashMap<String,Object>();
	        map1.put("kpi_seq",kpi_seq);
	        list1 = socialService.chartAllSocialList(map1);
	        
	        List<SocialCommand> list2 = null;
	        Map<String,Object> map2 = new HashMap<String,Object>();
	        map2.put("kpi_seq",kpi_seq);
	        list2 = socialService.chartAllTotal(map2);
	        
	        List<SocialCommand> list3 = null;
	        Map<String,Object> map3 = new HashMap<String,Object>();
	        map3.put("kpi_seq",kpi_seq);
	        list3 = socialService.chartAllMyTotal(map3);
	    //    List<GsonDto> list = gsonDao.getJoblist();
	    //    System.out.println("socialCommand==list1===========:"+list1);
	        System.out.println("socialCommand==list2===========:"+list2);
	     //   System.out.println("socialCommand==list3===========:"+list3);
	         gson.toJson(list1);
	         gson.toJson(list2);
	         gson.toJson(list3);
	         return gson.toJson(list2);
	    }	 
	    @RequestMapping(value = "/gsonList3.do", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	    public @ResponseBody String gsonList3(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	        Gson gson = new Gson();
	        int kpi_seq = socialCommand.getKpi_seq();
	        List<SocialCommand> list1 = null;
	        Map<String,Object> map1 = new HashMap<String,Object>();
	        map1.put("kpi_seq",kpi_seq);
	        list1 = socialService.chartAllSocialList(map1);
	        
	        List<SocialCommand> list2 = null;
	        Map<String,Object> map2 = new HashMap<String,Object>();
	        map2.put("kpi_seq",kpi_seq);
	        list2 = socialService.chartAllTotal(map2);
	        
	        List<SocialCommand> list3 = null;
	        Map<String,Object> map3 = new HashMap<String,Object>();
	        map3.put("kpi_seq",kpi_seq);
	        list3 = socialService.chartAllMyTotal(map3);
	    //    List<GsonDto> list = gsonDao.getJoblist();
	   //     System.out.println("socialCommand==list1===========:"+list1);
	   //     System.out.println("socialCommand==list2===========:"+list2);
	        System.out.println("socialCommand==list3===========:"+list3);
	         gson.toJson(list1);
	         gson.toJson(list2);
	         gson.toJson(list3);
	         return gson.toJson(list3);
	    }
	    @RequestMapping(value = "/gsonList4.do", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	    public @ResponseBody String gsonList4(@ModelAttribute("social") SocialCommand socialCommand, BindingResult result, SessionStatus status) {
	        Gson gson = new Gson();
	        int kpi_seq = socialCommand.getKpi_seq();
	        List<SocialCommand> rlist = null;
	        Map<String,Object> map1 = new HashMap<String,Object>();
	        map1.put("kpi_seq",kpi_seq);
	        rlist = socialService.chartRaderSocial(map1);
	        
	        System.out.println("socialCommand==rlist===========:"+rlist);

	         gson.toJson(rlist);
	         return gson.toJson(rlist);
	    }	 	    
}
