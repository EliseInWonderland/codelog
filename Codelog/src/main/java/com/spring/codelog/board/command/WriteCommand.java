package com.spring.codelog.board.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.codelog.board.mapper.BoardMapper;
import com.spring.codelog.board.model.BoardVO;



@Component
public class WriteCommand implements Command {
	@Autowired
	private BoardMapper mapper;
	@Override
	public void execute(HttpServletRequest httpServletRequest, BoardVO vo) {

		System.out.println("커맨드 객체 호출");

		mapper.write(vo);
		System.out.println("작성 완료");

	

	}

}
