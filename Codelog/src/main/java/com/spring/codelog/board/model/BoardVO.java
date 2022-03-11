package com.spring.codelog.board.model;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class BoardVO {
	private int boardId;
	private String userId;
	private String title;
	private String writer;
	private String tags;
	private String content;
	private String imgPath;
	private int hit;
	private int likes;
	private Timestamp regDate;
	private String preview;
	private String thumbnail;
	private String  viewAll;
	
}
