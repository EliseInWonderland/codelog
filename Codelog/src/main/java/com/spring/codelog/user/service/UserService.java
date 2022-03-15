package com.spring.codelog.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.codelog.user.mapper.IUserMapper;
import com.spring.codelog.user.model.UserVO;

@Service
public class UserService implements IUserService {
	
	@Autowired
	private IUserMapper mapper;

	@Override
	public int checkId(String userId) {
		return mapper.checkId(userId);
	}

	@Override
	public void join(UserVO user) {
		mapper.join(user);
	}

	@Override
	public UserVO selectOne(String userId) {
		return mapper.selectOne(userId);
	}

	@Override
	public void updateUser(UserVO vo) {
		mapper.updateUser(vo);
	}
	
	@Override
	public void delete(String userId) {
		mapper.delete(userId);
	}




}
