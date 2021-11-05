package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.greenproject.domian.item.Item;

public interface ItemService {

	// <----- ItemController ----->

	// 제품 목록보기
	public Page<Item> itemList(int page);
	
	// 제품 카테고리 목록보기
	public Page<Item> itemCategoryList(int categoryId, int page);
	
	// 제품 상세페이지 보기
	public String itemDetaill(int itemId, int page);
		
	// 제품 검색하기
	public void searchItemList();

	// 제품 콤보박스
	public void comboItemList();

}
