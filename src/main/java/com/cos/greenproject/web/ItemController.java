package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.service.ItemService;
import com.cos.greenproject.service.WishService;
import com.cos.greenproject.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ItemController {
	
	// DI
	private final ItemService itemService;
	private final WishService wishService;
	private final HttpSession session;
	
	// 상품 검색하기
	@RequestMapping("/searchItemList")
	public void searchItemList() {
		
	}
	
	// 상품 콤보박스
	@RequestMapping("/comboItemList")
	public void comboItemList() {
		
	}
	
	// <----- Wish ----->
	// 위시체크
	@PostMapping("/api/item/{itemId}/wish")
	public @ResponseBody CMRespDto<Integer> wishSave(@PathVariable int itemId) {
		User principal = (User) session.getAttribute("principal");

		wishService.insWish(itemId, principal);
		Integer check = 1;
		return new CMRespDto<>(1, "성공", check); 
	}
	
	// 위시체크해제
	@DeleteMapping("/api/item/{itemId}/wish")
	public @ResponseBody CMRespDto<Integer> wishDelete(@PathVariable int itemId) {
		User principal = (User) session.getAttribute("principal");

		wishService.delWish(itemId, principal);
		Integer check = 0;
		return new CMRespDto<>(1, "성공", check); 
	}
}
