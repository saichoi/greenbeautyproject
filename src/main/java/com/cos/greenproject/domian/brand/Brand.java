package com.cos.greenproject.domian.brand;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "brand")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Brand {
	
	// PK
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	// 브랜드명
	@Column(nullable = false, length = 70)
	private String bname;

	// 내용
	@Lob
	private String content;

	// 등록일
	private LocalDate regiDate;

	@PrePersist
	public void regiDate() {
		this.regiDate = LocalDate.now();
	}

	// 제품수 (Item 테이블에서 셀렉트 mBrandItemCnt())
	private int itemCnt;
	
	// 리뷰수 (Item 테이블에서 셀렉트 mBrandReviewCnt())
	private int reviewCnt;
	
	// 만족도 (Item 테이블에서 셀렉트 mBrandRating())
	private double rating;
	
}