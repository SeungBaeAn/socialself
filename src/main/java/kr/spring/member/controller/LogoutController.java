package kr.spring.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping("/logout.do")
	public String process(HttpSession session) {
		
		//
		session.invalidate();
		
		return "redirect:/list.do";
	}
}
