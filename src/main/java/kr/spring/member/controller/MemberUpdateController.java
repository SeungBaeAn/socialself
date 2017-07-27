package kr.spring.member.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.member.validator.MemberValidator;

@Controller
@SessionAttributes("member")
public class MemberUpdateController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping(value="/update.do",method=RequestMethod.GET)
	public ModelAndView form(@RequestParam("id") String id) {
		
		MemberCommand memberCommand = memberService.getMember(id);
		
		return new ModelAndView("updateForm","member",memberCommand);
	}
	
	@RequestMapping(value="/update.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("member") MemberCommand memberCommand, BindingResult result, SessionStatus status) {
		
		if(log.isDebugEnabled()){
			log.debug("memberCommand : " + memberCommand);
		}
		
	
		new MemberValidator().validate(memberCommand, result);
		if(result.hasErrors()){
			return "updateForm";
		}
		
		memberService.updateMember(memberCommand);
		
		return "redirect:/list.do";
	}
}
