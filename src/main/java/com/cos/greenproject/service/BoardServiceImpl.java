package com.cos.greenproject.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.web.dto.BoardSaveDto;
import com.cos.greenproject.web.dto.BoardUpdateDto;

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
	
	// 게시글 카테고리 목록보기
	public Page<Board> boardCategoryList(int categoryId, int page) {
		Pageable pageRequest = PageRequest.of(page, 12, Sort.by(Sort.Direction.ASC, "id"));
		Page<Board> boardsEntity = boardRepository.mBoardCategoryList(categoryId, pageRequest);
		
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
	@Transactional(rollbackFor = MyAsyncNotFoundException.class) 
	public void updateBoard(int boardId, User principal, BoardUpdateDto dto) {
		
	    Board boardEntity = boardRepository.findById(boardId)
	        .orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다."));
	    
	    if (principal.getId() != boardEntity.getUser().getId()) {
	      throw new MyAsyncNotFoundException("해당 게시글을 수정할 권한이 없습니다.");
	    }
//	    System.out.println("게시글 수정 서비스 실행됨??");
	    boardEntity.setTitle(dto.getTitle());
	    boardEntity.setContent(dto.getContent());
	    //boardEntity.setImage(dto.getImage());
	    System.out.println(boardEntity);
	}

	// 게시글 삭제
	@Transactional(rollbackFor = MyAsyncNotFoundException.class)
	public void deleteBoard(int id, User principal) {
		// 권한이 있는 사람만 함수 접근 가능(principal.id == {id})
		Board boardEntity = boardRepository.findById(id)
				.orElseThrow(() -> new MyAsyncNotFoundException("해당글을 찾을 수 없습니다"));

		if (principal.getId() != boardEntity.getUser().getId()) {
			throw new MyAsyncNotFoundException("해당글을 삭제할 권한이 없습니다");
		}

		try {
			boardRepository.deleteById(id); // 오류발생??(id가 없으면)
		} catch (Exception e) {
			throw new MyAsyncNotFoundException(id + "를 찾을 수 없어서 삭제할 수 없어요");
		}

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
