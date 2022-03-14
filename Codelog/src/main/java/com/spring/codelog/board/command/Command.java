package com.spring.codelog.board.command;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.codelog.board.model.BoardVO;

public interface Command {
 public void execute(HttpServletRequest httpServletRequest, BoardVO vo);
}
