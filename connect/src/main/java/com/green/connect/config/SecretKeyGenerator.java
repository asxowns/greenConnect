package com.green.connect.config;

import java.security.SecureRandom;
import java.util.Base64;

public class SecretKeyGenerator {
	public static void main(String[] args) {
        // 32 바이트의 랜덤 키 생성 (256 비트)
        byte[] key = new byte[32];
        new SecureRandom().nextBytes(key);
        
        // Base64로 인코딩
        String base64EncodedSecret = Base64.getEncoder().encodeToString(key);
        System.out.println("생성된 비밀 키 (Base64 인코딩): " + base64EncodedSecret); // 출력된 키를 application.properties에 사용
    }
}
