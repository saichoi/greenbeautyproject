package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.BoardSaveDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class BoardServiceImpl implements BoardService {

	private final BoardRepository boardRepository;

	// <----- PageController ----->
	
	// 게시글 목록 보기
	public Page<Board> boardList(int page) {
	    PageRequest pageRequest = PageRequest.of(page, 4, Sort.by(Direction.DESC, "id"));
	    Page<Board> boardsEntity = boardRepository.findAll(pageRequest); 
	    return boardsEntity;
	}

	// 게시글 상세보기
	public Board boardDetail(int boardId, Model model) {
	    Board boardEntity = boardRepository.findById(boardId).orElseThrow(() -> new MyNotFoundException(boardId + "를 못 찾았어요."));
	    return boardEntity;
	}

	// 게시글 수정페이지 이동
	public Board moveUpdateForm(int boardId, Model model) {
	    Board boardEntity = boardRepository.findById(boardId)
	            .orElseThrow(() -> new MyNotFoundException(boardId + "번의 게시글을 찾을 수 없습니다."));
	        return boardEntity;
	}

	// <----- BoardController ----->
	
	// 게시글 등록
	@Transactional(rollbackFor = MyNotFoundException.class)
	public void insertBoard(BoardSaveDto dto, User principal) {
		boardRepository.save(dto.toEntity(principal));
	}
	
	// 게시글 수정
	public void updateBoard() {

	}

	// 게시글 삭제
	public void deleteBoard() {

	}

	// 리뷰 검색하기
	public void searchBoardList() {

	}

	// 리뷰 필터링
	public void filterBoardList() {

	}

	// 리뷰 콤보박스
	public void comboBoardList() {

	}

}
