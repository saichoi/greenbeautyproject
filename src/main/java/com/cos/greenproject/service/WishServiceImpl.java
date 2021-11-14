package com.cos.greenproject.service;

import org.springframework.stereotype.Service;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.item.ItemRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.domian.wish.Wish;
import com.cos.greenproject.domian.wish.WishRepository;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class WishServiceImpl implements WishService{
	private final ItemRepository itemRepository;
	private final WishRepository wishRepository;
	
	// 해당유저/해당제품 위시 체크 확인을 위해 select
	public int selWish(int itemId, User principal) {
		Item itemEntity = itemRepository.findById(itemId)
				.orElseThrow(() -> new MyNotFoundException(itemId + "를 찾을 수 없습니다"));	
		 
		 return wishRepository.mWishSelect(itemId, principal.getId());
	}
	
	// 위시체크
	public void insWish(int itemId, User principal) {
		Item itemEntity = itemRepository.findById(itemId)
				.orElseThrow(() -> new MyNotFoundException(itemId + "를 찾을 수 없습니다"));	
		
		Wish wish = new Wish();
		wish.setUser(principal);
		wish.setItem(itemEntity);
		wishRepository.save(wish);
	}
	
	// 위시체크해제
	public void delWish(int itemId, User principal) {
		Item itemEntity = itemRepository.findById(itemId)
				.orElseThrow(() -> new MyNotFoundException(itemId + "를 찾을 수 없습니다"));	
		
		wishRepository.mWishDelete(itemId, principal.getId());
	}
}
