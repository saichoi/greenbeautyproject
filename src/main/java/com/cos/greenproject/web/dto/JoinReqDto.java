package com.cos.greenproject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.cos.greenproject.domian.user.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class JoinReqDto {

	@Size(min = 2, max = 20)
	@NotBlank
	private String username;
	
	@Size(min = 2, max = 20)
	@NotBlank
	private String password;
	
	@Size(min = 2, max = 50)
	@NotBlank
	private String name;
	
	@Size(min = 2, max = 30)
	@NotBlank
	private String nickname;
	
	@Size(min = 2, max = 50)
	@NotBlank
	private String email;
	
	@Size(min = 10, max = 10)
	@NotBlank
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
	         .nickname(nickname)
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
