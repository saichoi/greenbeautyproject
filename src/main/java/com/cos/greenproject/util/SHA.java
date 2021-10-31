package com.cos.greenproject.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA {	 
	public static String encrypt(String rawPassword, MyAlgorithm algorithm) { 

		MessageDigest md = null;
		
		try {
			md = MessageDigest.getInstance(algorithm.getType()); 
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} 
		
		md.update(rawPassword.getBytes());   

		StringBuilder sb = new StringBuilder();
		for(Byte b : md.digest()) {
			sb.append(String.format("%02x", b));
		}
		return sb.toString();
		
	}
}
