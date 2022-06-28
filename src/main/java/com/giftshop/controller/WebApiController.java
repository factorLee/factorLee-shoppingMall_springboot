package com.giftshop.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.giftshop.service.WebService;
import com.giftshop.vo.ProductRegisterVO;
import com.giftshop.vo.testVO;


@RestController
/*
 * @RequestMapping({"/webapi"})
 */
@RequestMapping(value = "/webapi", method = { RequestMethod.GET, RequestMethod.POST })
public class WebApiController {

	private static Logger logger = Logger.getLogger(WebController.class.getName());

	@Autowired
	WebService wService;
	
	@Autowired
	ResourceLoader resourceLoader;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	
	
	@PostMapping({ "/register.do" })
	public Object registerProduct(@RequestParam("file1") MultipartFile uploadFile,
            HttpServletRequest request, HttpServletResponse response, Model model,
            ProductRegisterVO prvo) {

		logger.info("start insert controller!!");
		String fileName = uploadFile.getOriginalFilename();
        String fileName2 = UUID.randomUUID().toString();
        
        String filePath = request.getSession().getServletContext().getRealPath("/thumbnail");
        try {
        	logger.info("start file processing!!");
			/* uploadFile.transferTo(new File(filePath + fileName)); */
            uploadFile.transferTo(new File(filePath + "\\" + fileName2 + "_" + fileName));
            System.out.println("이미지 파일 저장 완료");
            
            System.out.println("이미지 파일 저장 완료");
			System.out.println(fileName);
			System.out.println(fileName2);
			System.out.println(filePath);
			System.out.println(filePath + "\\" + fileName2 + "_" + fileName);

			
			prvo.setPr_thumbnail(filePath + "\\" + fileName2 + "_" + fileName);
			System.out.println("console test: " + prvo.getPr_thumbnail());
			 
			
		    model.addAttribute("pr_thumbnail", filePath + "\\" + fileName2 + "_" + fileName);
		 

			
			
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }
        
        logger.info("start insert query!!");
        boolean insertBool = wService.insertProductRegister(prvo);
	    
        
		return insertBool;
	}



	
}