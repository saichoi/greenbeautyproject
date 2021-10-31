package com.cos.greenproject.util;

public class Script {

		//실패했을 때 메서드 
		public static String back(String msg) {
			StringBuilder sb = new StringBuilder ();
			sb.append("<script>");
			sb.append("alert(' "+msg+" ');"); 
			sb.append("history.back();"); 
			sb.append("</script>");
			
			return sb.toString();
		}
		
		//성공했을 때 메서드 - 이동만 하는 것
		public static String href(String path) {
			StringBuilder sb = new StringBuilder ();
			sb.append("<script>");
			sb.append("location.href='"+path+"';"); 
			sb.append("</script>");
			
			return sb.toString();
		}
		
		//성공했을 때 메서드 - alert 창을 띄우고 이동  
		public static String href(String path, String msg) {  
			StringBuilder sb = new StringBuilder(); 
			sb.append("<script>");
			sb.append("alert(' "+msg+" ');"); 
			sb.append("location.href='"+path+"';"); 
			sb.append("</script>");
			
			return sb.toString();
		}
	
}
