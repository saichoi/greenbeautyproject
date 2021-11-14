package com.cos.greenproject.web;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.board.BoardRepository;
import com.cos.greenproject.domian.brand.BrandRepository;
import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.item.ItemRepository;
import com.cos.greenproject.domian.user.User;
import com.cos.greenproject.service.BoardService;
import com.cos.greenproject.service.ItemService;
import com.cos.greenproject.service.LikeService;
import com.cos.greenproject.service.UserService;
import com.cos.greenproject.service.WishService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PageController {
	
	// DI
	private final UserService userService;
	private final BoardService boardService;
	private final ItemService itemService;
	private final LikeService likeService;
	private final WishService wishService;
	private final HttpSession session;
	private final BoardRepository boardRepository;
	private final ItemRepository itemRepository;
	private final BrandRepository brandRepository;
	
	
	// <----- Board ----->
	
	// 리뷰 목록 페이지 이동 (메인페이지)
	@GetMapping("/board")
	public String home(Model model, 
			@PageableDefault(page = 0, size = 3, sort = "id", direction = Sort.Direction.DESC) Pageable page,
			@RequestParam(required = false, defaultValue = "") String searchText) {
		Page<Board> boardsEntity = boardService.boardList(page, searchText);
		int startPage = Math.max(1, boardsEntity.getPageable().getPageNumber() - 4);
		int endPage = Math.min(boardsEntity.getTotalPages(), boardsEntity.getPageable().getPageNumber() + 4);
		int nowPage = boardsEntity.getPageable().getPageNumber() + 1;
		int boardTotalCnt = boardRepository.mReviewCnt();
		int itemTotalCnt = itemRepository.mItemCnt();
		int brandTotalCnt = brandRepository.mBrandCnt();
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("boardTotalCnt", boardTotalCnt);
		model.addAttribute("brandTotalCnt", brandTotalCnt);
		model.addAttribute("itemTotalCnt", itemTotalCnt);
		model.addAttribute("boardsEntity", boardsEntity);
		System.out.println(boardTotalCnt);
		System.out.println(itemTotalCnt);
		System.out.println(brandTotalCnt);
		return "board/list";
	}

	// 리뷰 카테고리 페이지 이동
	@GetMapping("/board/category/{categoryId}")
	public String boardCategoryList(@PathVariable int categoryId, Model model,			
			@PageableDefault(page = 0, size = 3, sort = "id", direction = Sort.Direction.DESC) Pageable page,
			@RequestParam(required = false, defaultValue = "") String searchText) {
		Page<Board> boardsEntity =  boardService.boardCategoryList(categoryId, page, searchText);
		int startPage = Math.max(1, boardsEntity.getPageable().getPageNumber() - 4);
		int endPage = Math.min(boardsEntity.getTotalPages(), boardsEntity.getPageable().getPageNumber() + 4);
		int nowPage = boardsEntity.getPageable().getPageNumber() + 1;
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("categoryId",categoryId);
		model.addAttribute("boardsEntity", boardsEntity);
		System.out.println(boardsEntity);
		return "board/category";
	}

	// 리뷰 상세 페이지 이동
	@GetMapping("/board/{boardId}/detail")
	public String detail(@PathVariable int boardId, Model model, int page) {
		User principal = (User) session.getAttribute("principal");
		if(principal != null) {
		    model.addAttribute("likeCheck", likeService.selLike(boardId, principal));
		}
	    model.addAttribute("boardEntity", boardService.boardDetail(boardId, model));
		model.addAttribute("page", page);
		return "board/detail";
	}

	// 리뷰 작성 페이지 이동
	@GetMapping("/api/board/saveForm")
	public String saveForm(int itemId, Model model, int page) {
		model.addAttribute("itemEntity",  itemService.saveForm(itemId));
		model.addAttribute("page", page);
		model.addAttribute("date", LocalDate.now());
		return "board/saveForm";
	}

	// 리뷰 수정하기 페이지 이동
	@GetMapping("/api/board/{boardId}/updateForm")
	public String boardUpdateForm(@PathVariable int boardId, Model model) {
	    model.addAttribute("boardEntity", boardService.moveUpdateForm(boardId, model));
		return "board/updateForm";
	}
	
	// <----- Item ----->
	
	// 제품 목록 페이지 이동
	@GetMapping("/item/list")
	public String itemList(Model model, 
			@PageableDefault(page = 0, size = 12, sort = "id", direction = Sort.Direction.ASC) Pageable page,
			@RequestParam(required = false, defaultValue = "") String searchText) {
		Page<Item> itemsEntity =  itemService.itemList(page, searchText);
		int startPage = Math.max(1, itemsEntity.getPageable().getPageNumber() - 4);
		int endPage = Math.min(itemsEntity.getTotalPages(), itemsEntity.getPageable().getPageNumber() + 4);
		int nowPage = itemsEntity.getPageable().getPageNumber() + 1;
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("itemsEntity", itemsEntity);
		return "item/list";
	} 

	// 제품 카테고리 페이지 이동
	@GetMapping("/item/category/{categoryId}")
	public String itemCategoryList(@PathVariable int categoryId, Model model, 		
			@PageableDefault(page = 0, size = 12, sort = "id", direction = Sort.Direction.DESC) Pageable page,
			@RequestParam(required = false, defaultValue = "") String searchText) {
		Page<Item> itemsEntity = itemService.itemCategoryList(categoryId, page, searchText);
		int startPage = Math.max(1, itemsEntity.getPageable().getPageNumber() - 4);
		int endPage = Math.min(itemsEntity.getTotalPages(), itemsEntity.getPageable().getPageNumber() + 4);
		int nowPage = itemsEntity.getPageable().getPageNumber() + 1;
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("categoryId",categoryId);
		model.addAttribute("itemsEntity", itemsEntity);
		System.out.println(itemsEntity);
		return "item/category";
	}

	// 제품 상세페이지 이동
	@GetMapping("/item/{id}/detail")
	public String itemDetaill(@PathVariable int id, Model model, int page) {
		User principal = (User) session.getAttribute("principal");
		model.addAttribute("itemEntity", itemService.itemDetail(id));
		if(principal != null) {
		    model.addAttribute("wishCheck", wishService.selWish(id, principal));
		}
		model.addAttribute("page", page);
		return "item/detail";
	}
	
	// <----- User ----->

	// 회원가입 페이지 이동
	@GetMapping("/joinForm")
	public String join() {
		return "user/joinForm";
	}

	// 로그인 페이지 이동
	@GetMapping("/loginForm")
	public String login() {
		return "user/loginForm";
	}

	// 마이페이지 이동
	@GetMapping("/api/user/{userId}/mypage")
	public String mypage(@PathVariable int userId, String key) {
		return "user/mypage";
	}
	
	// 회원수정 페이지 이동
	@GetMapping("/api/user/{userId}/updateForm")
	public String updateForm(@PathVariable int userId) {
		return "user/updateForm";
	}

}