package com.cos.greenproject.domian.wish;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface WishRepository extends JpaRepository<Wish, Integer>{
	// 해당 제품&유저의 wish 삭제
	@Query(value = "DELETE FROM wish where itemId = :itemId and userId = :userId", nativeQuery = true)
	void mWishDelete(int itemId, int userId);
	
	// 해당 제품&유저의 wish 검색
	@Query(value = "SELECT count(*) FROM wish where itemId = :itemId and userId = :userId", nativeQuery = true)
	int mWishSelect(int itemId, int userId);
}
