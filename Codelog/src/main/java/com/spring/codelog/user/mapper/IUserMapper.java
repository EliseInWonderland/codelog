package com.spring.codelog.user.mapper;

import com.spring.codelog.user.model.UserVO;

public interface IUserMapper {

	//아이디 중복 체크 기능
	int checkId(String userId);
	
	//회원 가입 기능
	void join(UserVO user);
	
	//회원정보 조회 기능
	UserVO selectOne(String userId);
	
	//회원정보 수정 기능
	void updateUser(UserVO vo);
	
	//회원 탈퇴 기능
	void delete(String userId);
	
}
