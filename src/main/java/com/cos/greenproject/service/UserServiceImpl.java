package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.domian.user.UserRepository;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.util.MyAlgorithm;
import com.cos.greenproject.util.SHA;
import com.cos.greenproject.web.dto.JoinReqDto;
import com.cos.greenproject.web.dto.LoginReqDto;
import com.cos.greenproject.web.dto.UserUpdateDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserServiceImpl implements UserService {
	
	private final UserRepository userRepository;
	
	// 회원수정
	@Transactional(rollbackFor = MyAsyncNotFoundException.class) 
	public void updateInfo(User principal, UserUpdateDto dto) {

		User userEntity = userRepository.findById(principal.getId())
	        .orElseThrow(()-> new MyAsyncNotFoundException("회원정보를 찾을 수 없습니다."));
	    
	    userEntity.setName(dto.getName());
	    userEntity.setNickname(dto.getNickname());
	    userEntity.setEmail(dto.getEmail());
	    userEntity.setBirthday(dto.getBirthday());
	    userEntity.setGender(dto.getGender());
	    userEntity.setSkinType(dto.getSkinType());
	    userEntity.setSkinTrouble(dto.getSkinTrouble());
	    userEntity.setSkinTone(dto.getSkinTone());

	} 
	
	// 회원가입
	@Transactional(rollbackFor = MyNotFoundException.class) 
	public void join(JoinReqDto dto) {
//		System.out.println("서비스 실행됨?");
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

