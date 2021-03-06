package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.item.ItemRepository;
import com.cos.greenproject.handler.ex.MyNotFoundException;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class ItemServiceImpl implements ItemService{
	
	private final ItemRepository itemRepository;

	// 제품 목록보기
	public Page<Item> itemList(Pageable page, String searchText) {
		return itemRepository.findItemByTitleOrContent(searchText, page);
	}
	
	// 제품 카테고리 목록보기
	public Page<Item> itemCategoryList(int categoryId, Pageable page, String searchText) {
		return itemRepository.findItemCategoryByTitleOrContent(categoryId, searchText, page);
	}

	// 제품 상세페이지 보기
	public Item itemDetail(int id) {
		Item itemEntity = itemRepository.findById(id)
				.orElseThrow(() -> new MyNotFoundException(id + "를 찾을 수 없습니다"));	
		return itemEntity;
	}
	
	// 리뷰 작성 페이지 보기
	public Item saveForm(int itemId) {
		Item itemEntity = itemRepository.findById(itemId)
				.orElseThrow(() -> new MyNotFoundException(itemId + "를 찾을 수 없습니다"));
		return itemEntity;
	}
	
	// 제품 검색하기
	public void searchItemList() {
		
	}
	
	// 제품 콤보박스
	public void comboItemList() {
	
	}		
}
