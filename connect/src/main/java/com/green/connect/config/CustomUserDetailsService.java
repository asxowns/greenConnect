package com.green.connect.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.green.connect.dao.IUserDao;
import com.green.connect.dto.User;

@Service
public class CustomUserDetailsService implements UserDetailsService {
	//사용자 정보 저장소 
	@Autowired
	private IUserDao userDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// 사용자 정보를 찾아서 CustomUserDetails로 반환
		
		User user = userDao.loginDo(username);
		
		if(user != null) {
			return new CustomUserDetails(user);
		}
		
		throw new UsernameNotFoundException("로그인 실패");
	}

}
