package com.cos.greenproject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.cos.greenproject.domian.board.Board;
import com.cos.greenproject.domian.brand.Brand;
import com.cos.greenproject.domian.category.Category;
import com.cos.greenproject.domian.item.Item;
import com.cos.greenproject.domian.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardUpdateDto {
	@Size(min = 2, max = 50)
	@NotBlank 
	private String title;
	private double rating;
	private String content;
	
	public Board toEntity(User principal) {
		Board board = new Board();
		board.setTitle(title);
		board.setRating(rating);
		board.setContent(content);
		board.setUser(principal);
		return board;
	}
}
