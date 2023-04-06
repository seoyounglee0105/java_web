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

@WebServlet("/uploadProc")
@MultipartConfig
public class uploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public uploadController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 파일 업로드 처리
		Part filePart = request.getPart("file"); // form input (type="file")의 name을 매개변수에
		System.out.println("파일 확인 (MIME 타입) : " + filePart.getContentType());
		System.out.println("파일 확인 (바이트 기반 파일 크기) : " + filePart.getSize());
		System.out.println("파일 확인 (업로드된 파일명) : " + filePart.getSubmittedFileName());
		
		// 입력 스트림 준비
		InputStream fileContent = filePart.getInputStream();
		
		// 출력 스트림 준비 -> 내 서버 컴퓨터에 File 객체 만들어서 저장할 계획
		OutputStream outputStream = null;
		
		// 같은 이름의 파일을 여러 번 올린다면 구분할 수가 없음.
		// 구분할 수 있는 방법 필요 -> 랜덤한 문자열
		try {
			// 랜덤한 문자열 생성
			UUID uuid = UUID.randomUUID(); // static 메서드
			System.out.println("uuid : " + uuid);
			
			// 랜덤한 문자열과 합쳐서 저장함
			String fileName = uuid + "_" + filePart.getSubmittedFileName();
			
			// 1단계 : 파일을 저장할 폴더를 미리 만들어 두기 (c드라이브에 jsp_upload 폴더) 
			// 폴더는 마지막 / 로 닫아줘야 함 !
			// 해당 경로에 filName 변수에 담긴 이름으로 파일을 만들어라.
			File file = new File("C:/jsp_upload/", fileName);
			
			// 파일 출력 스트림 생성 
			outputStream = new FileOutputStream(file);
			
			// 입력 스트림에서 바이트 단위로 읽어 오면서 출력 스트림에 쓰기
			byte[] buffer = new byte[1024]; // 1024 바이트 == 1 킬로바이트라서 (보통 1 킬로바이트씩 데이터를 읽어옴)
			int length;
			
			while ((length = fileContent.read(buffer)) != -1) {
				outputStream.write(buffer, 0, length); // 시작은 0
			}
			System.out.println("File upload 성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			fileContent.close();
			// 출력 스트림이 존재한다면
			if (outputStream != null) {
				outputStream.flush(); // 없으면 데이터가 전송되지 않음
				outputStream.close();
			}
			response.sendRedirect("/demo11"); // web.xml에 선언하지 않았다면 파일명 써야 함
		}
		
		
	}

}
