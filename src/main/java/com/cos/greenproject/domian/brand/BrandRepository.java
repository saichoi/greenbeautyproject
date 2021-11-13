package com.cos.greenproject.domian.brand;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BrandRepository extends JpaRepository<Brand, Integer> {

	// 전체브랜드수
	@Query(value = "SELECT count(id) FROM brand", nativeQuery = true)
	int mBrandCnt();
	
}
