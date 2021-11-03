package com.cos.greenproject.web.dto;

import com.cos.greenproject.domian.user.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class JoinReqDto {

	private String username;
	private String password;
	private String name;
	private String email;
	private String birthday;
	private String gender;
	private String skinType;
	private String skinTrouble;
	private String skinTone;
	
	public User toEntity() {
	     
	     User user = User.builder()
	         .username(username)
	         .password(password)
	         .name(name)
	         .email(email)
	         .birthday(birthday)
	         .gender(gender)
	         .skinType(skinType)
	         .skinTrouble(skinTrouble)
	         .skinTone(skinTone)
	         .build();
	     return user;
	   }
	
}
