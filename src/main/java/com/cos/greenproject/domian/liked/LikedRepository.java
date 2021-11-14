package com.cos.greenproject.domian.liked;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LikedRepository extends JpaRepository<Liked, Integer>{
		// 해당 보드&유저의 liked 삭제
		@Query(value = "DELETE FROM liked where boardId = :boardId and userId = :userId", nativeQuery = true)
		void mLikeDelete(int boardId, int userId);
		
		// 해당 보드&유저의 liked 검색
		@Query(value = "SELECT count(*) FROM liked where boardId = :boardId and userId = :userId", nativeQuery = true)
		int mLikeSelect(int boardId, int userId);
}
