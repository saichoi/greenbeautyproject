package com.cos.greenproject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserUpdateDto {
	
	@Size(min = 2, max = 20)
	@NotBlank
	private String name;
	
	@Size(min = 2, max = 50)
	@NotBlank
	private String nickname;
	
	@Size(min = 2, max = 50)
	@NotBlank
	private String email;
	
	@Size(min = 2, max = 10)
	@NotBlank
	private String birthday;
	
	@NotBlank
	private String gender;
	
	private String skinType;
	
	private String skinTrouble;
	
	private String skinTone;
}
