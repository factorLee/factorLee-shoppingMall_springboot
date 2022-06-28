package com.giftshop.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
 
	@Autowired
	private HandlerInterceptor interceptor;

	public void addInterceptors(InterceptorRegistry registry) {
	   registry.addInterceptor(this.interceptor)
	   	  //로그인 페이지 구축 후 /admin 추가 
	     //.addPathPatterns("/manager/**").addPathPatterns("/ins/**")
	     /*.addPathPatterns(new String[] { "/manager/login" })*/
	     .excludePathPatterns("/","/css/**","/js/**","/assets/**","/image/**","/web/**","/","/admin/**");
	}
	
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/data/**")
        .addResourceLocations("file:///C:\\Users\\SH\\Desktop\\images\\otp\\");
	    //.addResourceLocations("file:///home/centos/data/");
    }
    


}


