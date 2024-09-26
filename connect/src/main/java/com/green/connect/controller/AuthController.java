package com.green.connect.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.connect.config.TokenProvider;

@Controller
public class AuthController {
	@Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenProvider tokenProvider;

    @PostMapping("/loginDo")
    public ResponseEntity<?> login(@RequestParam("username") String username, @RequestParam("password") String password) {
        try {
            // 사용자 인증
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password)
            );

            // JWT 토큰 생성
            String token = tokenProvider.createToken(authentication);

            // JWT 토큰을 응답 헤더에 추가
            HttpHeaders headers = new HttpHeaders();
            headers.add("Authorization", "Bearer " + token);

            // 로그인 성공 시 응답 (예: 메인 페이지로 리다이렉션)
            return ResponseEntity.ok()
                    .headers(headers)
                    .body("Login successful"); // 실제로는 메인 페이지로 리다이렉트할 수도 있음
        } catch (AuthenticationException e) {
            return ResponseEntity.status(401).body("Login failed");
        }
    }
    
}
