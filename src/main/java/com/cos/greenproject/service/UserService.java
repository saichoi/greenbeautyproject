package com.cos.greenproject.service;

import javax.validation.Valid;

import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.JoinReqDto;
import com.cos.greenproject.web.dto.LoginReqDto;

public interface UserService {
	
	// <----- UserController ----->
	
	// 회원수정
	@Transactional 
	public void updateInfo();
	
	// 회원가입
	@Transactional(rollbackFor = MyNotFoundException.class) 
	public void join(@Valid JoinReqDto dto);
	
	// 로그인
	public User login(LoginReqDto dto);
	
	// 내리뷰리스트에 등록
	public void addReviewList();
	
	// 내리뷰리스트에서 삭제
	public void removeReviewList();
	
	// 위시리스트에 등록
	public void addWishist();
	
	// 위시리스트에서 삭제
	public void removeWishlist();

}
