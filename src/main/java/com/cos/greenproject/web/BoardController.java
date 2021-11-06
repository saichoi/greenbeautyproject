package com.cos.greenproject.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.service.BoardService;
import com.cos.greenproject.service.CommentService;
import com.cos.greenproject.util.Script;
import com.cos.greenproject.web.dto.BoardSaveDto;
import com.cos.greenproject.web.dto.CMRespDto;

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
	public @ResponseBody String save(@Valid BoardSaveDto dto, BindingResult bindingResult, Model model, int page) {
		User principal = (User) session.getAttribute("principal");
		System.out.println(dto);
		if (bindingResult.hasErrors()) { // 에러가 터졌을 때
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return Script.back(errorMap.toString());
		}
		
		dto.setContent(dto.getContent().replaceAll("<p>", ""));
		dto.setContent(dto.getContent().replaceAll("</p>", "")); // p태그 날리기
		
		boardService.insertBoard(dto, principal);
		
		model.addAttribute("page", page);
		return Script.href("/", "글쓰기 완료");
	}

	// 리뷰 수정하기
	@PutMapping("/api/board/{boardId}")
	public @ResponseBody CMRespDto<String>update(@PathVariable int boardId, 
		      @RequestBody @Valid BoardSaveDto dto, BindingResult bindingResult) {
	    //유효성검사
	    if (bindingResult.hasErrors()) {
	      Map<String, String> errorMap = new HashMap<>();
	      for (FieldError error : bindingResult.getFieldErrors()) {
	        errorMap.put(error.getField(), error.getDefaultMessage());
	      }
	      throw new MyAsyncNotFoundException(errorMap.toString());
	    }
	    
	    User principal = (User) session.getAttribute("principal");
	    
	    boardService.updateBoard(boardId, principal, dto);
	    
	    return new CMRespDto<String>(1, "업데이트 성공",null);
	}

	// 리뷰 삭제하기
	@DeleteMapping("/api/board/{boardId}")
	public @ResponseBody CMRespDto<String> deleteById(@PathVariable int boardId) {
		User principal = (User) session.getAttribute("principal");
		
		boardService.deleteBoard(boardId, principal);
		
		return new CMRespDto<String>(1, "성공", null); // 데이터리턴 String -> text/plain
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
