package com.giftshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
@EnableAutoConfiguration(exclude= {SecurityAutoConfiguration.class})
public class ServletInitializer extends SpringBootServletInitializer {
	
	//Initializer 때 해당 고정 변수 설정
/*	public static final int HISTORY_LIST_SIZE=20; 
	public static final int STATIS_DAY_SIZE=7;
	public static final int STATIS_WEEK_SIZE=4;
	public static final int STATIS_MONTH_SIZE=12;
	public static final int STATIS_CONTENT_SIZE=20;*/

	//BUILD
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		
		return application.sources(ServletInitializer.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(ServletInitializer.class, args);
		
	}

}