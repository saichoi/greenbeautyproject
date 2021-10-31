package com.cos.greenproject.domian.item;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ItemRepository extends JpaRepository<Item, Integer> {

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
