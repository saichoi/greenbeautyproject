package com.cos.greenproject.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.comment.Comment;
import com.cos.greenproject.domian.comment.CommentRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.CommentSaveDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class CommentServiceImpl implements CommentService{
	
	private final CommentRepository commentRepository;
 	private final BoardRepository boardRepository;
 	
	// <----- CommentController ----->
 	
 	// 댓글삭제
 	@Transactional(rollbackFor = MyAsyncNotFoundException.class)
 	public void delComment(int id, User principal) {
 		Comment commentEntity = commentRepository.findById(id)
		.orElseThrow(()->new MyAsyncNotFoundException("없는 댓글 번호입니다"));
		
		if(principal.getId() != commentEntity.getUser().getId()) {
			throw new MyAsyncNotFoundException(" 해당 게시글을 삭제할 수 없는 유저입니다");
		}
		commentRepository.deleteById(id);
}
 	
	// <----- BoardController ----->

 	// 댓글 등록
	@Transactional(rollbackFor = MyNotFoundException.class)
 	public void insComment(int boardId, CommentSaveDto dto, User principal) {
 		Board boardEntity = boardRepository.findById(boardId)
				.orElseThrow(() -> new MyNotFoundException("해당 게시글을 찾을 수 없습니다"));

		Comment comment = new Comment();
		comment.setContent(dto.getContent());
		comment.setUser(principal);
		comment.setBoard(boardEntity);

		commentRepository.save(comment);
 	} 
 	
}
