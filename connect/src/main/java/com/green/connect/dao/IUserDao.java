package com.green.connect.dao;

import org.apache.ibatis.annotations.Mapper;

import com.green.connect.dto.User;

@Mapper
public interface IUserDao {
	
	//로그인
	public User loginDo(String username);
	
	
	
}
