package com.cos.greenproject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class LoginReqDto {
	
	  private String username;
	  private String password;

}
