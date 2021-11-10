package com.cos.greenproject.domian.board;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	// 카테고리별 리뷰 목록보기
	@Query(value = "SELECT * FROM board WHERE categoryId=:categoryId", nativeQuery = true)
	Page<Board> mBoardCategoryList(int categoryId, Pageable paging);

	// 내리뷰리스트
	@Query(value = "SELECT * FROM board WHERE userId=:userId", nativeQuery = true)
	Board mMyReviewList(int userId);

	// 리뷰 검색기능
	@Query(value = "SELECT * FROM board WHERE title LIKE %:searchText% or content LIKE %:searchText%", nativeQuery = true)
	Page<Board> findBoardByTitleOrContent(String searchText, Pageable page);

	// 카테고리별 리뷰 검색 기능
	@Query(value = "SELECT * FROM board WHERE categoryId =:categoryId IN (SELECT categoryId FROM board WHERE title LIKE %:searchText% OR content LIKE %:searchText%)", nativeQuery = true)
	Page<Board> findBoardCategoryByTitleOrContent(int categoryId, String searchText, Pageable page);

}
