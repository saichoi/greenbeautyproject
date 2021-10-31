package com.cos.greenproject.service;

import org.springframework.transaction.annotation.Transactional;

public interface CommentService {
	
	// <----- CommentController ----->
	
	// 댓글삭제
 	@Transactional
 	public void delComment();
 	
	// <----- BoardController ----->

 	// 댓글 등록
 	@Transactional
 	public void insComment();
 	
}
