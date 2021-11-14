package com.cos.greenproject.service;

import com.cos.greenproject.domian.user.User;

public interface WishService {
	// 해당유저/해당제품 위시 체크 확인을 위해 select
	public int selWish(int itemId, User principal);
	
	// 위시체크
	public void insWish(int itemId, User principal);
	
	// 위시체크해제
	public void delWish(int itemId, User principal);
}
