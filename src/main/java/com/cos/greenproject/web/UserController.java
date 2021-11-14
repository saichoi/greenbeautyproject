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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.service.UserService;
import com.cos.greenproject.util.Script;
import com.cos.greenproject.web.dto.CMRespDto;
import com.cos.greenproject.web.dto.JoinReqDto;
import com.cos.greenproject.web.dto.LoginReqDto;
import com.cos.greenproject.web.dto.UserUpdateDto;

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
	public @ResponseBody String login(@Valid LoginReqDto dto, BindingResult bindingResult) {

		// 실패했을 때
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return Script.back(errorMap.toString());
		}
		User userEntity = userService.login(dto);
		if (userEntity == null) {
			return Script.back("아이디 혹은 비밀번호를 잘못 입력하였습니다.");
		} else {
			session.setAttribute("principal", userEntity);
			return Script.href("/", "로그인 성공");
		}

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
		if (dto.getSkinTone() == null) {
			dto.setSkinTone("밝은(21호)");
		}
		userService.join(dto);
		return Script.href("/loginForm");
	}

	// 회원정보 수정
	@PutMapping("/api/user/{id}")
	public @ResponseBody CMRespDto<String> update(@PathVariable int id, @Valid @RequestBody UserUpdateDto dto,
			BindingResult bindingResult) {

		// 유효성검사
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			throw new MyAsyncNotFoundException(errorMap.toString());
		}

		User principal = (User) session.getAttribute("principal");

		// 권한 체크
		if (principal.getId() != id) {
			throw new MyAsyncNotFoundException("회원정보를 수정할 권한이 없습니다.");
		}
		// 핵심로직
		userService.updateInfo(principal, dto);

		// 세션 동기화 해주는 부분
		principal.setName(dto.getName());
		principal.setNickname(dto.getNickname());
		principal.setEmail(dto.getEmail());
		principal.setBirthday(dto.getBirthday());
		principal.setGender(dto.getGender());
		principal.setSkinType(dto.getSkinType());
		principal.setSkinTrouble(dto.getSkinTrouble());
		principal.setSkinTone(dto.getSkinTone());

		session.setAttribute("principal", principal); // 세션값 변경

		return new CMRespDto<String>(1, "성공", null);
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
