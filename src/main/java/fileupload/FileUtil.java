package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

//파일업로드와 관련된 기능을 메서드로 정의한 유틸리티 클래스
public class FileUtil {
	
	//파일 업로드 처리(매개변수 : request 내장객체와 디렉토리경로)
	public static String uploadFile(HttpServletRequest req, String sDirectory) 
			throws ServletException, IOException { 
		/*
		 파일첨부를 위한 <input> 태그의 name 속성값을 이용해서 Part 인스턴스를 
		 생성한다. 이를 통해 파일을 서버에 저장할 수 있다.
		 */
		Part part = req.getPart("ofile");
		
		/*
		 Part 인스턴스에서 헤더값을 통해 원본파일명을 얻어온다.
		 (차후 콘솔에서 확인)
		 */
		String partHeader = part.getHeader("content-disposition");
		System.out.println("partHeader="+ partHeader);
		
		/*
		 헤더값을 통해 얻어온 문자열에서 "filename="을 구분자로 split한다.
		 그러면 String 타입의 배열로 반환된다.
		 */
		String[] phArr = partHeader.split("filename=");
		/*
		 위 결과중 1번 인덱스의 값이 파일명이 된다. 여기서 더블쿼테이션을 
		 제거해야 하므로 아래와 같이 replace()를 통해 제거해준다.
		 단, 더블쿼테이션 앞에 이스케이프 시퀀스 기호(\)를 반드시 추가해야 한다.
		 */
		String originalFileName = phArr[1].trim().replace("\"", "");
		
		/*
		 전송된 파일이 있는 경우라면 서버의 디렉토리에 파일을 저장한다.
		 File.separator :  운영체제(OS)마다 경로를 표시하는 기호가 다르므로 
		 해당 OS에 맞는 구분기호를 자동으로 추가해준다.
		 */
		if(!originalFileName.isEmpty()) {
			part.write(sDirectory + File.separator + originalFileName);
		}
		//원본파일명을 반환한다.
		return originalFileName;
	}

	/* 서버에 저장된 파일명을 변경(파일명이 한글인 경우 웹브라우저에서 깨짐 현상이 
	 발생할 수 있으므로 영문 혹은 숫자의 조합으로 변경하는 것이 안전하다.) */
	public static String renameFile(String sDirectory,String fileName) {
		/*
		 파일명에서 확장자를 잘라내기 위해 뒤에서부터 .이 있는 위치를 찾는다.
		 파일명에는 2개 이상의 .을 사용할 수 있기 때문이다.
		 */
		String ext = fileName.substring(fileName.lastIndexOf("."));
		/*
		 날짜와 시간을 이용해서 파일명으로 사용할 문자열을 생성한다.
		 "년월일_시분초999"와 같은 형태가 된다.
		 */
		String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
		//파일명과 확장자를 결합한다.
		String newFileName = now + ext;
		
		//원본파일명과 새로운 파일명을 이용해서 File인스턴스를 생성한다.
		File oldFile = new File(sDirectory + File.separator + fileName);
		File newFile = new File(sDirectory + File.separator + newFileName);
		//파일명을 새로운 이름으로 변경한다.
		oldFile.renameTo(newFile);
		
		//변경된 파일명을 반환한다.
		return newFileName;
		
	}
	
	
	//multiple속성이 부여되어 2개 이상의 파일을 업로드
	public static ArrayList<String> multipleFile(HttpServletRequest req, String sDirectory) 
			throws ServletException, IOException { 
		
		//파일명 저장을 위한 List 계열의 컬렉션 생성
		ArrayList<String> listFileName = new ArrayList<>();

		//getParts() 메서드로 Part 인스턴스를 컬렉션의 형태로 생성
		Collection<Part> parts = req.getParts();
		for(Part part : parts) {
			
			/* 전송된 폼값 중에 파일이 아니라면 대상이 아니라면
			 반복문의 처음으로 이동한다.
			 */
			if(!part.getName().equals("ofile"))
				continue;
			
			//폼값중 파일이 맞다면 헤더값을 얻어온다
			String partHeader = part.getHeader("content-disposition");
			System.out.println("partHeader="+ partHeader);
			
			//헤더값에서 파일명을 잘라낸다.
			String[] phArr = partHeader.split("filename=");
			String originalFileName = phArr[1].trim().replace("\"", "");
			
			//전송된 파일을 디렉토리에 저장한다.
			if(!originalFileName.isEmpty()) {
				part.write(sDirectory + File.separator + originalFileName);
		}
			//List에 파일명을 추가한다.
			listFileName.add(originalFileName);
		
		}
		//모든 파일의 업로드가 완료되면 파일명을 저장한 List를 반환한다.
		return listFileName;
	}
	
	
	
	public static void download(HttpServletRequest req, HttpServletResponse resp,
            String directory, String sfileName, String ofileName) {
        String sDirectory = req.getServletContext().getRealPath(directory);
        try {
            // 파일을 찾아 입력 스트림 생성
            File file = new File(sDirectory, sfileName);
            InputStream iStream = new FileInputStream(file);


            // 한글 파일명 깨짐 방지
            String client = req.getHeader("User-Agent");
            if (client.indexOf("WOW64") == -1) {
                ofileName = new String(ofileName.getBytes("UTF-8"), "ISO-8859-1");
            }
            else {
                ofileName = new String(ofileName.getBytes("KSC5601"), "ISO-8859-1");
            }

            // 파일 다운로드용 응답 헤더 설정
            resp.reset();
            resp.setContentType("application/octet-stream");
            resp.setHeader("Content-Disposition",
                           "attachment; filename=\"" + ofileName + "\"");
            resp.setHeader("Content-Length", "" + file.length() );

            //out.clear();  // 출력 스트림 초기화

            // response 내장 객체로부터 새로운 출력 스트림 생성
            OutputStream oStream = resp.getOutputStream();

            // 출력 스트림에 파일 내용 출력
            byte b[] = new byte[(int)file.length()];
            int readBuffer = 0;
            while ( (readBuffer = iStream.read(b)) > 0 ) {
                oStream.write(b, 0, readBuffer);
            }

            // 입/출력 스트림 닫음
            iStream.close();
            oStream.close();
        }
        catch (FileNotFoundException e) {
            System.out.println("파일을 찾을 수 없습니다.");
            e.printStackTrace();
        }
        catch (Exception e) {
            System.out.println("예외가 발생하였습니다.");
            e.printStackTrace();
        }
    }
	
	//파일 삭제를 위한 메서드
	public static void deleteFile(HttpServletRequest req,
			String directory, String filename) {
		//업로드 디렉토리의 물리적 경로 확인
        String sDirectory = req.getServletContext().getRealPath(directory);
        //매개변수로 전달된 파일명과 합쳐서 File인스턴스 생성
        File file = new File(sDirectory, File.separator + filename);
        //파일이 존재하는지 확인 후 삭제처리
        if(file.exists()) {
        	file.delete();
        }
	}
}

