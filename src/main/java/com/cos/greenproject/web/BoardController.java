package com.cos.greenproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.greenproject.service.BoardService;
import com.cos.greenproject.service.CommentService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardController {
	
	// DI
	private final BoardService boardService;
	private final CommentService commentService;
	private final HttpSession session;

	// 리뷰 등록하기
	@PostMapping("/api/board")
	public void save() {

	}

	// 리뷰 수정하기
	@PutMapping("/api/board/{boardId}")
	public void update(@PathVariable int boardId) {

	}

	// 리뷰 삭제하기
	@DeleteMapping("/api/board/{boardId}")
	public void deleteById(@PathVariable int baordId) {

	}
	
	// 리뷰 검색하기
	@RequestMapping("/searchBoardList")
	public void searchBoardList() {
		
	}
	
	// 리뷰 필터링
	@RequestMapping("/filterBoardList")
	public void filterBoardList() {
		
	}
	
	// 리뷰 콤보박스
	@RequestMapping("/comboBoardList")
	public void comboBoardList() {
		
	}
	
	// <----- Comment ----->
	
	// 댓글달기
	@PostMapping("/api/board/{boardId}/comment")
	public void commentSave(@PathVariable int boardId) {
		
	}
	 
}
