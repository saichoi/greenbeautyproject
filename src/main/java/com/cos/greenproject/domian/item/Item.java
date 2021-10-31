package com.cos.greenproject.domian.item;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import com.cos.greenproject.domian.brand.Brand;
import com.cos.greenproject.domian.category.Category;
import com.cos.greenproject.domian.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "item")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Item {
	
	// PK
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	// 제품명
	@Column(nullable = false, length = 70)
	private String iname;

	// 가격
	private int price;

	// 사진
	@Lob
	private String image;

	// 등록일
	private LocalDate regiDate;

	@PrePersist
	public void regiDate() {
		this.regiDate = LocalDate.now();
	}

	// 리뷰수 (Board 테이블에서 셀렉트  mItemReviewCnt())
	private int reviewCnt;
	
	// 위시리스트 등록수 
	private int wishCnt;
	
	// 만족도 (Board 테이블에서 셀렉트  mItemRating())
	private double rating;

	// Foreign Keys
	// 카테고리 정보
	@JoinColumn(name = "categoryId")
	@ManyToOne(fetch = FetchType.EAGER)
	private Category categroy;

	// 브랜드 정보
	@JoinColumn(name = "brandId")
	@ManyToOne(fetch = FetchType.EAGER)
	private Brand brand;
	
	// 위시리스트에 추가한 사용자 정보
	@JoinColumn(name = "userId")
	@ManyToOne
	private User user;
	
}