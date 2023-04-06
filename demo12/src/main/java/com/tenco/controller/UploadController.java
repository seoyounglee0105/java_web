package com.tenco.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig // 선언하기
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파일 업로드 처리
		Part filePart = request.getPart("file"); // input의 name을 매개변수로
		System.out.println("컨텐츠 확인 : " + filePart.getContentType()); // 마임 타입
		System.out.println("바이트 크기 : " + filePart.getSize());
		System.out.println("파일 이름 : " + filePart.getSubmittedFileName());
		
		// 스트림 준비
		InputStream fileContent = filePart.getInputStream();
		// 출력 스트림 준비 (서버 컴퓨터에 출력)
		OutputStream outputStream = null;
		
		try {
			// 사용자 파일명 중복 방지
			UUID uuid = UUID.randomUUID();
			String fileName = uuid + "_" + filePart.getSubmittedFileName(); 
			
			// 폴더를 코드 상으로 직접 생성해보기
			String saveDirectory = "C:/demo12";
			File dir = new File(saveDirectory);
			// dir 안에 파일이 하나도 없다면 폴더가 만들어지지 않았다는 의미
			if (!dir.exists()) {
				dir.mkdirs(); // 폴더 생성
			}
			
			File file = new File("C:/demo12/", fileName);
			
			// 출력 스트림 사용
			outputStream = new FileOutputStream(file);
			byte[] buffer = new byte[1024];
			int length;
			while ((length = fileContent.read(buffer)) != -1) {
				// 1024 크기 바이트 읽었음
				outputStream.write(buffer, 0, length); 
			}
			// 파일 생성 완료
			System.out.println("파일 생성 완료 !");
			
		} catch (Exception e) {
			
		} finally {
			fileContent.close();
			
			outputStream.flush();
			// 폴더가 없을 경우 예외가 발생하기 때문에 방어적 코드 필요
			if (outputStream != null) {
				outputStream.close();
			}
			response.sendRedirect("/demo12/home.jsp");
		}
	}

}
