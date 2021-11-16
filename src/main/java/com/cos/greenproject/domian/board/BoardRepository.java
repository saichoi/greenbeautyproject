package com.cos.greenproject.domian.board;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	// 해당유저의 리뷰수
	@Query(value = "SELECT COUNT(*) FROM board WHERE userId = :userId", nativeQuery = true)
	int selectReview(int userId);
	
	// 해당유저의 좋아요수
	@Query(value = "SELECT NVL(SUM(likeCnt),0) FROM board WHERE userId = :userId", nativeQuery = true)
	int selectLike(int userId);
	
	// 내리뷰리스트
	@Query(value = "SELECT * FROM board WHERE userId=:userId", nativeQuery = true)
	Page<Board> mMyReviewList(int userId, Pageable page);

	// 체크박스 검색기능
	@Query(value = "SELECT * FROM board WHERE userId IN (SELECT id FROM user WHERE skinType =:skinType OR skinTrouble =:skinTrouble)", nativeQuery = true)
	Page<Board> findBoardBySkinTypeSkinTrouble(String skinType, String skinTrouble, Pageable page);

	// 리뷰 검색기능
	@Query(value = "SELECT * FROM board WHERE title LIKE %:searchText% or content LIKE %:searchText%", nativeQuery = true)
	Page<Board> findBoardByTitleOrContent(String searchText, Pageable page);

	// 카테고리별 리뷰 검색 기능
	@Query(value = "SELECT * FROM (SELECT * FROM board WHERE title LIKE %:searchText% OR content LIKE %:searchText%) b WHERE categoryId =:categoryId", nativeQuery = true)
	Page<Board> findBoardCategoryByTitleOrContent(int categoryId, String searchText, Pageable page);
	
	// 전체리뷰수
	@Query(value = "SELECT count(id) FROM board", nativeQuery = true)
	int mReviewCnt();

}
