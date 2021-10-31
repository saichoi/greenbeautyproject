package com.cos.greenproject.service;

import org.springframework.transaction.annotation.Transactional;

public interface UserService {
	
	// <----- UserController ----->
	
	// 회원수정
	@Transactional 
	public void updateInfo();
	
	// 회원가입
	@Transactional 
	public void join();
	
	// 로그인
	public void login();
	
	// 내리뷰리스트에 등록
	public void addReviewList();
	
	// 내리뷰리스트에서 삭제
	public void removeReviewList();
	
	// 위시리스트에 등록
	public void addWishist();
	
	// 위시리스트에서 삭제
	public void removeWishlist();
	
}
