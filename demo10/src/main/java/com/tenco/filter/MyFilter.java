package com.tenco.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class MyFilter implements Filter {
	
	// 필터에도 라이프 사이클이 존재함
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		System.out.println(">>> 필터 초기화 <<<");
	}

	// 중요 !
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("----- 1 -----");
		request.setCharacterEncoding("UTF-8"); // 이렇게 해두면 각 서블릿에 다 설정할 필요가 없어짐
		// Filter에서 Servlet으로 보내려면 (밑 코드가 없으면 필터에서 걸려서 안넘어감)
		chain.doFilter(request, response);
		// response MIME 타입과 인코딩 표준도 필터에서 설정해줄 수 있음 (하지만 서블릿에서 지정하는 것이 권장됨)
//		response.setContentType("text/plain; charset=utf-8"); 
		System.out.println("----- 3 -----");
		
	}
	
	@Override
	public void destroy() {
		
		System.out.println(">>> 필터 destory <<<");
		
	}
}
