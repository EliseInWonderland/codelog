package com.spring.codelog.user.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class UserVO {
	private String userId;
	private String userPw;
	private String nickname;
	private String email;
	private String userInfo;
	private String userImg;
	
}
