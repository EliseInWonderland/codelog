package com.spring.codelog.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.codelog.board.command.Command;
import com.spring.codelog.board.model.BoardVO;



@Controller
@RequestMapping("/boardController")
public class BoardController {

	@Autowired
	Command command;
	
	@GetMapping("/test")
	public String test() {
		return "home";
	}
	
	@GetMapping("/write")
	public String write(BoardVO vo, HttpServletRequest hsr) {
		System.out.println(vo);
		System.out.println("글 작성 요청");
		command.execute(hsr, vo);
		System.out.println(vo.getTitle());
		System.out.println(vo.getTags());
		System.out.println(vo.getContent());
		System.out.println("글 작성 완료");

		return "home";
	}

}
