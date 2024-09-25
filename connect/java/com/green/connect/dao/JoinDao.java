package com.green.connect.dao;

import org.apache.ibatis.annotations.Mapper;

import com.green.connect.dto.User;

@Mapper
public interface JoinDao {

	void insertUser(User user);

	int countByEmail(String email);
}
