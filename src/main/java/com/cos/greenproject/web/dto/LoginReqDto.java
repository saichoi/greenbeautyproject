package com.cos.greenproject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Setter
@Getter
public class LoginReqDto {
	
	@Size(min = 2, max = 20)
	@NotBlank
	private String username;
	
	@Size(min = 2, max = 20)
	@NotBlank
	private String password;

}
