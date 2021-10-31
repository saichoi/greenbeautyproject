package com.cos.greenproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	// 관리자 메인페이지
	@GetMapping("/admin")
	public String home() {
		return "admin/index";
	}

	// 관리자 사이트 통계 페이지
	@GetMapping("/admin/charts")
	public String charts() {
		return "admin/charts";
	}

	// 관리자 회원관리 페이지
	@GetMapping("/admin/user")
	public String user() {
		return "admin/user";
	}

	// 관리자 리뷰관리 페이지
	@GetMapping("/admin/board")
	public String board() {
		return "admin/board";
	}

	// 관리자 브랜드관리 페이지
	@GetMapping("/admin/brand")
	public String brand() {
		return "admin/brand";
	}

	// 관리자 제품관리 페이지
	@GetMapping("/admin/item")
	public String item() {
		return "admin/item";
	}

	// 관리자 로그인 페이지
	@GetMapping("/admin/login")
	public String login() {
		return "admin/login";
	}

	// 관리자 회원가입 페이지
	@GetMapping("/admin/join")
	public String join() {
		return "admin/join";
	}

	// 관리자 비밀번호찾기 페이지
	@GetMapping("/admin/password")
	public String password() {
		return "admin/password";
	}


}
