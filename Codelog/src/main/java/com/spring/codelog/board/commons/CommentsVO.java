package com.spring.codelog.board.commons;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class CommentsVO {
	private int id;
	private int boardId;
	private String userId;
	private String content;
	private Timestamp regDate;
	private Timestamp modiDate;
	private String writer;
}
