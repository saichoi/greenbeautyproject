package com.cos.greenproject.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.service.UserService;
import com.cos.greenproject.util.Script;
import com.cos.greenproject.web.dto.JoinReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {

	// DI
	private final UserService userService;
	private final HttpSession session;

	// 로그아웃
	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	
	// 로그인
	@PostMapping("/login")
	public void login() {

	}
	
	// 회원가입
	@PostMapping("/join")
	public @ResponseBody String join(@Valid JoinReqDto dto, BindingResult bindingResult) {
		// 실패했을 때
	    if (bindingResult.hasErrors()) {
	      Map<String, String> errorMap = new HashMap<>();
	      for (FieldError error : bindingResult.getFieldErrors()) {
	        errorMap.put(error.getField(), error.getDefaultMessage());
	      }
	      return Script.back(errorMap.toString());
	    }
	    userService.join(dto);
	    return Script.href("/loginForm");
	}

	// 회원정보 수정
	@PutMapping("/api/user/{userId}")
	public void update(@PathVariable int userId) {

	}

	// 내리뷰리스트에 등록
	@PostMapping("/api/user/{userId}/addreview")
	public void addReviewList() {
		
	}
	
	// 내리뷰리스트에서 삭제
	@DeleteMapping("/api/user/{userId}/removereview")
	public void removeReviewList() {
		
	}
	
	// 위시리스트에 등록
	@PostMapping("/api/user/{userId}/addwish")
	public void addWishist() {
		
	}
	
	// 위시리스트에서 삭제
	@DeleteMapping("/api/user/{userId}/removewish")
	public void deleteWishlist() {
		
	}

}
