package com.tenco.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter2 implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println(">>> 필터 초기화 <<<");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println(">>> doFilter 작동 <<<");
		request.setCharacterEncoding("UTF-8");
		
		chain.doFilter(request, response);
		
		System.out.println(">>> doFilter 넘어감 <<<");
	}
	
	@Override
	public void destroy() {
		System.out.println(">>> 필터 destroy <<<");
	}
	
}
