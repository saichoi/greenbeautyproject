package com.cos.greenproject.domian.liked;

import javax.persistence.Entity;
import javax.persistence.FetchType;
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

@Table(name = "liked")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Liked {
		// PK
		@Id 
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id; 
		
		// 사용자 정보
		@JoinColumn(name = "userId") 
		@ManyToOne(fetch = FetchType.EAGER)    
		private User user; 
		
		// 게시글(리뷰) 정보
		@JoinColumn(name = "boardId")
		@ManyToOne
		private Board board;
}
