package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.service.CommentService;
import com.cos.greenproject.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CommentController {
	
	// DI
	private final CommentService commentService;
	private final HttpSession session;

	// 댓글 삭제
	@DeleteMapping("/api/comment/{commentId}")
	public @ResponseBody CMRespDto<?> deleteById(@PathVariable int commentId) {
		User principal = (User)session.getAttribute("principal");
		
		commentService.delComment(commentId, principal);	
		return new CMRespDto<>(1,"성공", null);
	}

}
