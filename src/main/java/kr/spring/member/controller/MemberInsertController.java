package kr.spring.member.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.member.validator.IdNotDuplicatedValidator;
import kr.spring.member.validator.MemberValidator;

@Controller
@RequestMapping("insert.do")
public class MemberInsertController {

   private Logger log = Logger.getLogger(this.getClass());

   @Resource(name="memberService")
   private MemberService memberService;

   @Autowired
   private IdNotDuplicatedValidator idNodDuplicatedValidator;
   
   //
   @ModelAttribute("member")   //@
   public MemberCommand initCommand(){
      return new MemberCommand();
   }
   
   @RequestMapping(value="/insert.do", method=RequestMethod.GET)
   public String form(){
      return "insertForm";
   }
   
   @RequestMapping(method=RequestMethod.POST)
   public String submit(@ModelAttribute("member") MemberCommand memberCommand, BindingResult result) {
	   
	   if(log.isDebugEnabled()) {
		   log.debug("memberCommand : " + memberCommand);
	   }
	   
	   //id,passwd,name 
	   new MemberValidator().validate(memberCommand, result);
	   
	   //id 
	   idNodDuplicatedValidator.validate(memberCommand, result);
	   if(result.hasErrors()) {
		   return form();
	   }
	   
	   memberService.insertMember(memberCommand);
	   
	   return "redirect:/list.do";
   }

}