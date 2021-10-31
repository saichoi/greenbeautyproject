package com.cos.greenproject.domian.comment;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "comment")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Comment {
	
	// PK
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	// 내용
	@Column(nullable = false)
	private String content;
	
	// Foreign Keys
	// 사용자 정보
	@JoinColumn(name = "userId")
	@ManyToOne
	private User user;
	
	// 게시글(리뷰) 정보
	@JoinColumn(name = "boardId")
	@ManyToOne
	private Board board;
	
}