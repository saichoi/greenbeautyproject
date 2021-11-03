package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.domian.user.UserRepository;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.util.MyAlgorithm;
import com.cos.greenproject.util.SHA;
import com.cos.greenproject.web.dto.JoinReqDto;
import com.cos.greenproject.web.dto.LoginReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
	
	private final UserRepository userRepository;
	
	// 회원수정
	@Transactional 
	public void updateInfo() {
		
	} 
	
	// 회원가입
	@Transactional(rollbackFor = MyNotFoundException.class) 
	public void join(JoinReqDto dto) {
	    // 정상일 때
	    String encPassword = SHA.encrypt(dto.getPassword(), MyAlgorithm.SHA256);
	    dto.setPassword(encPassword); 
	    userRepository.save(dto.toEntity()); 
	}
	
	// 로그인
	public User login(LoginReqDto dto) {
		 return userRepository.mLogin(dto.getUsername(), SHA.encrypt(dto.getPassword(), MyAlgorithm.SHA256));
	}
	
	// 내리뷰리스트에 등록
	public void addReviewList() {
		
	}
	
	// 내리뷰리스트에서 삭제
	public void removeReviewList() {
		
	}
	
	// 위시리스트에 등록
	public void addWishist() {
		
	}
	
	// 위시리스트에서 삭제
	public void removeWishlist() {
		
	}
}

