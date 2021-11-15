package com.cos.greenproject.service;

import javax.validation.Valid;

import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.JoinReqDto;
import com.cos.greenproject.web.dto.LoginReqDto;
import com.cos.greenproject.web.dto.UserUpdateDto;

public interface UserService {
	// 회원정보가져오기
	public User selectInfo(int userId);
	// <----- UserController ----->
	
	// 회원수정
	@Transactional(rollbackFor = MyAsyncNotFoundException.class) 
	public void updateInfo(User principal, UserUpdateDto dto);
	
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
