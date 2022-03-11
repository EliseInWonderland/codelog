package com.spring.codelog.user.commons;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class followersVO {
	private int id;
	private String userId;
	private String toId;
	private Timestamp regDate;
}
