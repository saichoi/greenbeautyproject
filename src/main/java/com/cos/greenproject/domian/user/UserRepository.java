package com.cos.greenproject.domian.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.greenproject.domian.board.Board;

public interface UserRepository extends JpaRepository<User, Integer> {

	// 로그인
	@Query(value = "SELECT * FROM user WHERE username = :username AND password = :password", nativeQuery = true)
	  User mLogin(String username, String password);

}
