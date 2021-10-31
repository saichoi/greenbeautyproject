package com.cos.greenproject.domian.user;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.item.Item;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "user")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class User {
	
	// PK
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	// 아이디
	@Column(nullable = false, length = 20, unique = true)   
	private String username;
	
	// 비밀번호
	@Column(nullable = false, length = 70)
	private String password;
	
	// 이름
	@Column(nullable = false, length = 70)
	private String name;
	
	// 이메일
	@Column(nullable = false, length = 50)
	private String email;
	
	// 생일
	private LocalDateTime birthday;
	
	// 성별
	private String gender;
	
	// 피부타입
	private String skinType;
	
	// 피부고민
	private String skinTrouble;
	
	// 피부톤
	private String skinTone;
	
	// 리뷰수 (Board 테이블에서 셀렉트 mReviewCnt())
	private int reviewCnt;
	
	// 좋아요수 (Board 테이블에서 셀렉트 mBoardLikeCnt())
	private int likeCnt;
	
	// 위시리스트 
	@JoinColumn(name = "itemId")
	@OneToMany
	private List<Item> wishList;
	
	// 좋아요 리스트(리뷰)
	@JsonIgnoreProperties({"user"})
	@OneToMany(mappedBy =  "user", fetch = FetchType.LAZY)
	@OrderBy("id desc")
	private List<Board> boardList;
	
}