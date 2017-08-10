package kr.spring.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.member.validator.LoginValidator;

@Controller
@RequestMapping("/login.do")
public class LoginController {
	
	//
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	//
	@ModelAttribute("member")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form() {
		return "adminLogin";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(@ModelAttribute("member") MemberCommand memberCommand, BindingResult result, HttpSession session) {
		
		if(log.isDebugEnabled()){
			log.debug("memberCommand : " + memberCommand);
		}
		
		//
		new LoginValidator().validate(memberCommand, result);
		if(result.hasErrors()) {
			return form();
		}
		
		
		try {
			
			MemberCommand member = memberService.getMember(memberCommand.getId());
			
			boolean check = false;
			
			if(member!=null) {
				//
				check = member.isCheckedPasswd(memberCommand.getPasswd());
			}
			if(check) {
			   
				session.setAttribute("userId", memberCommand.getId());
				if(memberCommand.getId().equals("self")){
					return  "redirect:/self/step.do";	
				}else{
				return  "redirect:/self/corpList.do";
				}
			}else {
				//
				throw new Exception();
			}
			
		}catch(Exception e) {
		
			result.reject("invalidIdOrPassword");
			return form();
		}
		
	}
	
}
