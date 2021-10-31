package com.cos.greenproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.greenproject.service.ItemService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ItemController {
	
	// DI
	private final ItemService itemService;
	
	// 상품 검색하기
	@RequestMapping("/searchItemList")
	public void searchItemList() {
		
	}
	
	// 상품 콤보박스
	@RequestMapping("/comboItemList")
	public void comboItemList() {
		
	}
}
