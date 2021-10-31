package com.cos.greenproject.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.greenproject.handler.ex.MyAsyncNotFoundException;
import com.cos.greenproject.handler.ex.MyNotFoundException;
import com.cos.greenproject.util.Script;
import com.cos.greenproject.web.dto.CMRespDto;

@ControllerAdvice  
public class GlobalExceptionHandler {
	
	// 일반요청 
	@ExceptionHandler(value = MyNotFoundException.class)
	public @ResponseBody String error1(MyNotFoundException e) { 
		System.out.println("Error:"+e.getMessage());
		return Script.href("/",e.getMessage()); 
	}
	
	// fetch 요청 ( 데이터를 응답 받아야할 때)
	@ExceptionHandler(value = MyAsyncNotFoundException.class)
	public @ResponseBody CMRespDto<String> error2(MyAsyncNotFoundException e) {  
		System.out.println("Error:"+e.getMessage());
		return new CMRespDto<String>(-1, e.getMessage(), null);
	}
	
}
