package com.cos.greenproject.domian.item;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ItemRepository extends JpaRepository<Item, Integer> {

	// 카테고리별 제품 목록보기
	@Query(value = "SELECT * FROM item where categoryId = :categoryId", nativeQuery = true)
	Page<Item> mItemCategoryList(int categoryId, Pageable paging);

	// 제품 검색기능  
	@Query(value = "SELECT * FROM item i INNER JOIN brand b ON i.brandId = b.id WHERE i.iname LIKE %:searchText% OR b.bname LIKE %:searchText%", nativeQuery = true)
	Page<Item> findItemByTitleOrContent(String searchText, Pageable page);
	
	// 만족도평균내서 넣기
	@Query(value = "UPDATE item SET rating = (SELECT AVG(rating) FROM board WHERE itemId = :itemId) WHERE id = :itemId", nativeQuery = true)
	void mRating(int itemId);
		
	// Brand 테이블의 제품수(itemCnt)
	@Query(value = "SELECT count(id) FROM item where brandId = :barndId", nativeQuery = true)
	int mBrandItemCnt();

	// Brand 테이블의 리뷰수(reivewCnt)
	@Query(value = "SELECT count(id) FROM item where brandId = :barndId", nativeQuery = true)
	int mBrandReviewCnt();

	// Brand 테이블의 만족도(rating)
	@Query(value = "SELECT sum(rating) / count(id) FROM board where brandId = :brandId", nativeQuery = true)
	double mBrandRating();
}
