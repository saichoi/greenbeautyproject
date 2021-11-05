package com.cos.greenproject.domian.category;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "category")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Category {
	
	// PK
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	// 부모 카테고리
	private String parent;
	
	// 카테고리 이름
	private String cname;
	
	// 제품수
	private int itemCnt;
	
	// 리뷰수
	private Integer reviewCnt;
	
	
}