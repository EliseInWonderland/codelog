package com.spring.codelog.board.commons;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ImgVO {
	private int imgId;
	private int boardId;
	private String imgPath;
}
