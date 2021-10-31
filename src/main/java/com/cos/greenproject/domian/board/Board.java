package com.cos.greenproject.domian.board;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import com.cos.greenproject.domian.brand.Brand;
import com.cos.greenproject.domian.category.Category;
import com.cos.greenproject.domian.comment.Comment;
import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.user.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "board")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Board {
	
	// PK
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	// 제목
	@Column(nullable = false, length = 70)
	private String title; 
	
	// 내용
	@Lob
	private String content;
	
	// 사진
	@Lob
	private String image;
	
	// 작성일
	private LocalDate createdAt;
	
	@PrePersist 
	public void createdAt() {
		this.createdAt = LocalDate.now();
	}

	// 만족도
	private double rating;
	
	// 좋아요수
	private int likeCnt;
	
	// 조회수
	private int hits;
	
	// Foreign Keys
	// 카테고리 정보
	@JoinColumn(name = "categoryId") 
	@ManyToOne(fetch = FetchType.EAGER)
	private Category categroy;
	
	// 브랜드 정보
	@JoinColumn(name = "brandId") 
	@ManyToOne(fetch = FetchType.EAGER)
	private Brand brand;
	
	// 제품 정보
	@JoinColumn(name = "itemId") 
	@ManyToOne(fetch = FetchType.EAGER)
	private Item item;
	
	// 사용자 정보
	@JoinColumn(name = "userId") 
	@ManyToOne(fetch = FetchType.EAGER)    
	private User user; 
	
	// 댓글 리스트
	@JsonIgnoreProperties({"board"})
	@OneToMany(mappedBy =  "board", fetch = FetchType.LAZY)
	@OrderBy("id desc")
	private List<Comment> comments;

}