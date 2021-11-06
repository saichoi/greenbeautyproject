package com.cos.greenproject.service;

import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.web.dto.CommentSaveDto;

public interface CommentService {
	
	// <----- CommentController ----->
	
	// 댓글삭제
 	@Transactional
 	public void delComment(int id, User principal);
 	
	// <----- BoardController ----->

 	// 댓글 등록
 	@Transactional
	public void insComment(int boardId, CommentSaveDto dto, User principal);
 	
}
