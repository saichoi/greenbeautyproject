package com.cos.greenproject.service;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.user.User;

public interface LikeService {
	// 해당유저/해당게시물 좋아요 체크 확인을 위해 select
	public int selLike(int boardId, User principal);
	
	// 좋아요체크
	public Board insLike(int boardId, User principal);
	
	// 좋아요체크해제
	public Board delLike(int boardId, User principal);
}
