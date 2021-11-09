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
public class BoardSaveDto {
	@Size(min = 2, max = 50)
	@NotBlank // 공백과 널을 막음
	private String title;
	private String content;
	private double rating;
	private String image;
	private Category categoryId;
	private Brand brandId;
	private Item itemId;
	
	public Board toEntity(User principal) {
		Board board = new Board();
		board.setTitle(title);
		board.setContent(content);
		board.setRating(rating);
		board.setUser(principal);
		board.setImage(image);
		board.setCategory(categoryId);
		board.setBrand(brandId);
		board.setItem(itemId);
		return board;
	}
}
