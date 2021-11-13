package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.cos.greenproject.domian.item.Item;

public interface ItemService {

	// <----- ItemController ----->

	// 제품 목록보기
	public Page<Item> itemList(Pageable page, String searchText);
	
	// 제품 카테고리 목록보기
	public Page<Item> itemCategoryList(int categoryId, Pageable page, String searchText);
	
	// 제품 상세페이지 보기
	public Item itemDetail(int id);
	
	// 리뷰 작성 페이지 보기
	public Item saveForm(int itemId);
		
	// 제품 검색하기
	public void searchItemList();

	// 제품 콤보박스
	public void comboItemList();

}
