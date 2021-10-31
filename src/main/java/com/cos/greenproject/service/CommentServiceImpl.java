package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.comment.CommentRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CommentServiceImpl implements CommentService{
	
	private final CommentRepository commentRepository;
 	private final BoardRepository boardRepository;
 	
	// <----- CommentController ----->
 	
 	// 댓글삭제
 	@Transactional
 	public void delComment() {
 		
 	}
 	
	// <----- BoardController ----->

 	// 댓글 등록
 	@Transactional
 	public void insComment() {

 	} 
 	
}
