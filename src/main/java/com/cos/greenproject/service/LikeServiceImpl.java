package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.liked.Liked;
import com.cos.greenproject.domian.liked.LikedRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class LikeServiceImpl implements LikeService{
	private final LikedRepository likedRepository;
	private final BoardRepository boardRepository;
	
	// 해당유저/해당게시물 좋아요 체크 확인을 위해 select
	public int selLike(int boardId, User principal) {
		 Board boardEntity = boardRepository.findById(boardId)
			        .orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다."));
		 
		 return likedRepository.mLikeSelect(boardId, principal.getId());
	}
	
	// 좋아요체크
	@Transactional(rollbackFor = MyAsyncNotFoundException.class) 
	public Board insLike(int boardId, User principal) {
		
	    Board boardEntity = boardRepository.findById(boardId)
	        .orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다."));
	    boardEntity.setLikeCnt(boardEntity.getLikeCnt() + 1);
	    
		Liked liked = new Liked();
		liked.setUser(principal);
		liked.setBoard(boardEntity);
		likedRepository.save(liked);
		return boardEntity;
	}
	
	// 좋아요체크해제
	@Transactional(rollbackFor = MyAsyncNotFoundException.class) 
	public Board delLike(int boardId, User principal) {
		Board boardEntity = boardRepository.findById(boardId)
				.orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다"));
		boardEntity.setLikeCnt(boardEntity.getLikeCnt() - 1);
		
		likedRepository.mLikeDelete(boardId, principal.getId());
		return boardEntity;
	}
}
