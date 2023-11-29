package com.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.entity.User;


public class AuthUtil {
	
	public static String getLogedInEmail() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    return  authentication.getName();
		}
		return null;
	}
	/*
	 public static void sendConfirmationEmail(String email) {
	        String host = "smtp.gmail.com";
	        int port = 587;
	        final String username = "danik28324@gmail.com";
	        final String password = "gyqlkjwfbgwwwsoa";

	        Properties props = new Properties();
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", port);

	        Session session = Session.getInstance(props, new Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        try {
	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(username));
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
	            message.setSubject("Confirmation Email");
	            message.setText("<a>Please confirm your account.");

	            Transport.send(message);
	            System.out.println("Confirmation email sent to: " + email);
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	    }
	*/
	
	  public static void sendConfirmationEmail(User user) {
	        // Cấu hình thông tin email
	        Properties properties = new Properties();
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");

	        // Tạo một phiên gửi email
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("danik28324@gmail.com", "gyqlkjwfbgwwwsoa");
	            }
	        });
	        try {
	            // Tạo đối tượng MimeMessage
	            MimeMessage message = new MimeMessage(session);

	            // Thiết lập thông tin người gửi
	            message.setFrom(new InternetAddress("your-email@example.com"));

	            // Thiết lập thông tin người nhận
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(user.getEmail()));

	            // Thiết lập chủ đề email
	            message.setSubject("Xác nhận email");

	            // Tạo nội dung email
	            String confirmationLink = "http://your-website.com/confirm?userId=" + user.getId();
	            String emailContent = "Xin chào " + user.getFullname() + ",\n\n"
	                    + "Vui lòng nhấp vào liên kết sau để xác nhận email của bạn:\n"
	                    + confirmationLink + "\n\n"
	                    + "Trân trọng,\n"
	                    + "Đội ngũ quản lý";

	            // Thiết lập nội dung email
	            message.setText(emailContent);

	            // Gửi email
	            Transport.send(message);
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	    }
	    
}
