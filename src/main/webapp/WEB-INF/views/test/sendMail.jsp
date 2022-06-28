<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.giftshop.mail.SMTPAuthenticatior"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

/* String from = request.getParameter("from");
String to = request.getParameter("to");
String subject = request.getParameter("subject");
String content = request.getParameter("content"); */

String itemName = request.getParameter("itemName");
String userName = request.getParameter("userName");
String phoneNum = request.getParameter("phoneNum");
String email = request.getParameter("email");
String content = request.getParameter("content");
/* String contentPack = "상품명:"+ itemName + System.lineSeparator() 
				+ "문의자 이름:" + userName + System.lineSeparator() 
				+ "문의자 전화번호: " + phoneNum + System.lineSeparator() 
				+ "문의자 이메일: " + email + System.lineSeparator() 
				+ "문의 내용: " + content; */
String contentPack = "<h2><b>상품 문의</b></h2><br>" 
				+ "<b>상품명: </b>" + itemName +  "<br>" 
				+ "<b>문의자 이름: </b>" + userName + "<br>" 
		+ "<b>문의자 전화번호: </b>" + phoneNum + "<br>" 
				+ "<b>문의자 이메일: </b>" + email + "<br>" 
		+ "<b>문의 내용: </b><br>" + content.replaceAll("[\r\n]", "<br>") + "<br>";	
String subject = userName + "님 상품 구매 문의";
// 입력값 받음

Properties p = new Properties(); // 정보를 담을 객체

p.put("mail.smtp.host", "smtp.naver.com"); 

p.put("mail.smtp.port", "465");
p.put("mail.smtp.starttls.enable", "true");
p.put("mail.smtp.auth", "true");
p.put("mail.smtp.debug", "true");
p.put("mail.smtp.socketFactory.port", "465");
p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
p.put("mail.smtp.socketFactory.fallback", "false");
 
p.put("mail.smtp.ssl.enable", "true"); 
p.put("mail.smtp.ssl.trust", "smtp.naver.com");
// SMTP 서버에 접속하기 위한 정보들


try{
    Authenticator auth = new SMTPAuthenticatior();
    Session ses = Session.getInstance(p, auth);
    
    ses.setDebug(true);
    
    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
    msg.setSubject(subject); // 제목
    
    Address fromAddr = new InternetAddress("lsj952005@naver.com");
    msg.setFrom(fromAddr); // 보내는 사람
    
    Address toAddr = new InternetAddress("lsj952005@gmail.com");
    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
    
    msg.setContent(contentPack, "text/html;charset=UTF-8"); // 내용과 인코딩
    
    Transport.send(msg); // 전송
} catch(Exception e){
    e.printStackTrace();
    out.println("<script>alert('문의 등록에 실패하였습니다.');history.back();</script>");
    // 오류 발생시 뒤로 돌아가도록
    return;
}

out.println("<script>alert('성공적으로 문의등록이 되었습니다!');location.href='inquiry';</script>");
// 성공 시
%>