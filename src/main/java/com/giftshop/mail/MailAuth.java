package com.giftshop.mail;

import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

public class MailAuth extends Authenticator {
	
	PasswordAuthentication pa;
	
	public MailAuth() {
		String mail_id = "lsj952005";
		String mail_pw = "dltkdwn1016";
		
		pa = new PasswordAuthentication(mail_id, mail_pw);
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}