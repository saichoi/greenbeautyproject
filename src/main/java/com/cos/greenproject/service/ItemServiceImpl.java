package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.item.ItemRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ItemServiceImpl implements ItemService{
	
	private final ItemRepository itemRepository;

	// 제품 목록보기
	public Page<Item> itemList(int page) {
		PageRequest pageRequest = PageRequest.of(page, 12, Sort.by(Sort.Direction.ASC, "id"));
		Page<Item> itemsEntity = itemRepository.findAll(pageRequest);
		
		return itemsEntity;
	}
	
	// 제품 카테고리 목록보기
	public Page<Item> itemCategoryList(int categoryId, int page) {
		Pageable pageRequest = PageRequest.of(page, 12, Sort.by(Sort.Direction.ASC, "id"));
		Page<Item> itemsEntity = itemRepository.mItemCategoryList(categoryId, pageRequest);
		
		return itemsEntity;
	}

	// 제품 상세페이지 보기
	public String itemDetaill(int itemId, int page) {
		
		return "item/detail";
	}
	
	// 제품 검색하기
	public void searchItemList() {
		
	}
	
	// 제품 콤보박스
	public void comboItemList() {
	
	}		
}
