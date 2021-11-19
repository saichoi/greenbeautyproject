package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.web.dto.BoardSaveDto;
import com.cos.greenproject.web.dto.BoardUpdateDto;

public interface BoardService {

	// <----- PageController ----->
	// 해당유저의 리뷰수
	public int countReview(int userId);
	
	// 해당유저의 좋아요수
	public int countLike(int userId);
	
	// 리뷰 목록 보기
	public Page<Board> boardList(Pageable page, String searchText);

	// 리뷰 카테고리 목록보기
	public Page<Board> boardCategoryList(int categoryId, Pageable page);

	// 리뷰 상세보기
	public Board boardDetail(int boardId, Model model);

	// 리뷰 수정페이지 이동
	public Board moveUpdateForm(int boardId, Model model);

	// <----- BoardController ----->

	// 리뷰 등록
	public void insertBoard(BoardSaveDto dto, User principal);

	// 리뷰 수정
	public void updateBoard(int boardId, User principal, BoardUpdateDto dto);

	// 리뷰 삭제
	public void deleteBoard(int id, User principal);

	// 내리뷰리스트
	public Page<Board> myBoardList(int userId, Pageable page);

	// 리뷰 검색하기
	public void searchBoardList();

	// 리뷰 필터링
	public void filterBoardList();

	// 리뷰 콤보박스
	public void comboBoardList();

}
