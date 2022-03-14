package com.spring.codelog.board.commons;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
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
