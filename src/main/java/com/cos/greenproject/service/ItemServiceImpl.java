package com.cos.greenproject.service;

import org.springframework.stereotype.Service;

import com.cos.greenproject.domian.item.ItemRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ItemServiceImpl implements ItemService{
	
	private final ItemRepository ItemRepository;

	// 상품 검색하기
	public void searchItemList() {
		
	}
	
	// 상품 콤보박스
	public void comboItemList() {
	
	}		
}
