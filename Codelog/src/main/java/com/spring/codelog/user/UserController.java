package com.spring.codelog.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.codelog.user.model.UserVO;
import com.spring.codelog.user.service.IUserService;

import oracle.jdbc.proxy.annotation.Post;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService service;
	
	//아이디 중복 확인 처리
	
	//회원가입 요청 처리
	@PostMapping("/")
	public String join(@RequestBody UserVO vo) {
		System.out.println("/user/:POST");
		service.join(vo);
		return "joinSuccess";
	}
	
	//로그인 요청 처리
	@PostMapping("/login")
	public String login(@RequestBody UserVO vo, HttpSession session) {
		System.out.println("/user/login: POST");
		System.out.println("param: " + vo);
		
		UserVO dbData = service.selectOne(vo.getUserId());
		
		if(dbData != null) {
			if(vo.getUserPw().equals(dbData.getUserPw())) {
				session.setAttribute("loginSession", dbData);
				return "loginSuccess";
			} else {
				return "wrongPw";
			}
		} else {
			return "wrongId";
		}
	}
	
	//마이페이지 이동 처리
	@GetMapping("/mypage")
	public ModelAndView mypage() {
		System.out.println("/user/mypage: GET");
		return new ModelAndView("/user/mypage");
	}
	
	//회원정보수정 페이지 이동 처리
	@GetMapping("/editUser")
	public ModelAndView editUser() {
		System.out.println("/user/editUser: GET");
		return new ModelAndView("/user/editProfile");
	}
	
	//회원정보 수정 처리
	@PostMapping("/updateUser")
	public ModelAndView updateUser(UserVO vo) {
		System.out.println("user/updateUser: POST");
		System.out.println("param: " + vo);
		service.updateUser(vo);
		System.out.println("회원정보 수정 성공!");
		return new ModelAndView("/user/mypage");
	}
	
	//회원탈퇴 처리
	@GetMapping("/delete")
	public ModelAndView delete(HttpSession session) {
		System.out.println("/user/delete: GET");
		UserVO vo = (UserVO) session.getAttribute("loginSession");
		service.delete(vo.getUserId());
		return new ModelAndView("redirect:/");
	}
	
	//로그아웃 처리
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		System.out.println("/user/logout: GET");
		session.invalidate();
		System.out.println("로그아웃 성공!");
		return new ModelAndView("redirect:/");
	}
	
}
