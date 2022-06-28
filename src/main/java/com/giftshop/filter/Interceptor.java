package com.giftshop.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@SuppressWarnings("deprecation")
@Component
public class Interceptor extends HandlerInterceptorAdapter {
  Logger log = LoggerFactory.getLogger(com.giftshop.filter.Interceptor.class);
  
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    HttpSession httpSession = request.getSession();
    
    String role = (String)httpSession.getAttribute("ROLE");
    
    if (role == null) {
        this.log.info("logout");
        //response.sendRedirect(request.getContextPath() + "/web/login");
        return false;
    }
    
    httpSession.setMaxInactiveInterval(1800);
    return true;
  }
  
  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    super.postHandle(request, response, handler, modelAndView);
  }
  
  public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    super.afterCompletion(request, response, handler, ex);
  }
  
  
}
