package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.cos.greenproject.service.UserService;

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
	public void join() {

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
