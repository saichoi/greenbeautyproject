package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.greenproject.service.CommentService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class CommentController {
	
	// DI
	private final CommentService commentService;
	private final HttpSession session;

	// 댓글 삭제
	@DeleteMapping("/api/comment/{commentId}")
	public void deleteById(@PathVariable int commentId) {
		
	}

}
