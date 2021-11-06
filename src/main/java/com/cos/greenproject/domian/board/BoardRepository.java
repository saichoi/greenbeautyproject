package com.cos.greenproject.domian.board;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.greenproject.domian.item.Item;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	// 카테고리별 리뷰 목록보기
	@Query(value = "SELECT * FROM board where categoryId = :categoryId", nativeQuery = true)
	Page<Board> mBoardCategoryList(int categoryId, Pageable paging);
	
	// User 테이블의 리뷰수(reviewCnt)
	@Query(value = "SELECT count(id) FROM board where userId = :userId", nativeQuery = true)
	int mReviewCnt();
	
	// User 테이블의 좋아요수(likeCnt)
	@Query(value = "SELECT likeCnt FROM board where userId :userId", nativeQuery = true)
	int mBoardLikeCnt();
	
	// Item 테이블의 리뷰수(reviewCnt)
	@Query(value = "SELECT count(id) FROM board where itemId = :itemId", nativeQuery = true)
	int mItemReviewCnt();
	
	// Item 테이블의 만족도(rating)
	@Query(value = "SELECT sum(rating) / count(id) FROM board where itemId = :itemId", nativeQuery = true)
	int mItemRating();

}
