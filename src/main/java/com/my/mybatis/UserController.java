package com.my.mybatis;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.mybatis.user.UserService;
import com.my.mybatis.user.UserVO;
import com.mysql.cj.Session;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login/loginok", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		//System.out.println(vo.getUserid());
		if(session.getAttribute("login") != null)
			session.removeAttribute("login");
		
		UserVO loginvo = userService.getUser(vo);
		if(loginvo != null) {
			session.setAttribute("login", loginvo);
			return "redirect:/board/list";
		}
		else {
			System.out.println("로그인 실패!!!");
			return "redirect:login";
		}
	}
	
	@RequestMapping(value = "/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
	
}
