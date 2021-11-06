package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.ui.Model;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.web.dto.BoardSaveDto;

public interface BoardService {

	// <----- PageController ----->
	
	// 게시글 목록 보기
	public Page<Board> boardList(int page);

	// 게시글 상세보기
	public Board boardDetail(int id, Model model);

	// 게시글 수정페이지 이동
	public void moveUpdateForm();
	
	// <----- BoardController ----->
	
	// 게시글 등록
	public void insertBoard(BoardSaveDto dto, User principal);
	
	// 게시글 수정
	public void updateBoard();

	// 게시글 삭제
	public void deleteBoard();

	// 리뷰 검색하기
	public void searchBoardList();

	// 리뷰 필터링
	public void filterBoardList();

	// 리뷰 콤보박스
	public void comboBoardList();

}
