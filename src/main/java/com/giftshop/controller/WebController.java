package com.giftshop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.giftshop.mapper.WebMapper;
import com.giftshop.service.WebService;
import com.giftshop.vo.ProductRegisterVO;
import com.google.gson.JsonObject;

import lombok.Value;

@Controller
@RequestMapping(value = "/web", method = { RequestMethod.GET, RequestMethod.POST })
public class WebController {

	private static Logger logger = Logger.getLogger(WebController.class.getName());

	@Autowired
	WebService wService;

	/*
	 * @Autowired BoardService bService;
	 * 
	 * @Autowired ExcelService eService;
	 */

	@Autowired
	ResourceLoader resourceLoader;

	@GetMapping({ "/dashboard" })
	public String login(Model model) {// 寃��깋議곌굔 異붽� �븘�슂

		return "dashboard";
	}

	// 이상주
	// 쇼핑몰 테스트
	@GetMapping({ "/shopTemplate" })
	public String shopTemplate(Model model) {

		return "user/shopTemplate";
	}

	@GetMapping({ "/itemDetails" })
	public String itemDetails(Model model) {

		List<ProductRegisterVO> prList = wService.selectProductRegister();

		model.addAttribute("prList", prList);

		return "user/itemDetails";
	}

	@GetMapping({ "/cart" })
	public String cart(Model model) {

		/* return "user/cart"; */
		return "admin/productList";
	}

	@GetMapping({ "/inquiry" })
	public String inquiryFrom(Model model) {

		return "user/inquiryForm";
	}

	@RequestMapping(value = "/mailForm", method = RequestMethod.POST)
	public String mailForm() {

		return "test/mailForm";
	}

	@GetMapping({ "/test" })
	public String test(Model model) {

		return "test/test";
	}

	@PostMapping({ "/register.do" })
	public void registerProduct(@RequestParam("file1") MultipartFile uploadFile,
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
        wService.insertProductRegister(prvo);
	    
        
	}


	/*
	 * @GetMapping({ "/productList" }) public String productList(Model model) {
	 * 
	 * return "admin/productList"; }
	 */

	
	
	
	@GetMapping({ "/sendMail" })
	public String sendMail() {

		return "test/sendMail";
	}

	@GetMapping({ "/itemUpdate" })
	public String itemUpdate(Model model) {

		return "admin/itemUpdate";
	}
	
	@GetMapping({ "/productList" })
	public String productList(Model model) {

		return "admin/productList";
	}

	// 0623
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping({ "/register.do" }) public Object
	 * registerProduct(ProductRegisterVO prvo) {
	 * 
	 * logger.info("start insert query!!");
	 * 
	 * boolean insertBool = wService.insertProductRegister(prvo);
	 * 
	 * return insertBool;
	 * 
	 * }
	 */

	/*
	 * @PostMapping({ "/productList" }) public String
	 * registerProduct(@RequestParam("file1") MultipartFile uploadFile,
	 * HttpServletRequest request, HttpServletResponse response, Model model,
	 * ProductRegisterVO prvo) {
	 * 
	 * logger.info("start insert controller!!"); String fileName =
	 * uploadFile.getOriginalFilename(); String fileName2 =
	 * UUID.randomUUID().toString();
	 * 
	 * String filePath =
	 * request.getSession().getServletContext().getRealPath("/thumbnail"); try {
	 * logger.info("start file processing!!"); uploadFile.transferTo(new
	 * File(filePath + fileName)); uploadFile.transferTo(new File(filePath +
	 * "\\" + fileName2 + "_" + fileName)); System.out.println("이미지 파일 저장 완료");
	 * 
	 * System.out.println("이미지 파일 저장 완료"); System.out.println(fileName);
	 * System.out.println(fileName2); System.out.println(filePath);
	 * System.out.println(filePath + "\\" + fileName2 + "_" + fileName);
	 * 
	 * 
	 * prvo.setPr_thumbnail(filePath + "\\" + fileName2 + "_" + fileName);
	 * System.out.println("console test: " + prvo.getPr_thumbnail());
	 * 
	 * 
	 * model.addAttribute("pr_thumbnail", filePath + "\\" + fileName2 + "_" +
	 * fileName);
	 * 
	 * 
	 * 
	 * 
	 * } catch (IllegalStateException | IOException e) { e.printStackTrace(); }
	 * 
	 * logger.info("start insert query!!"); wService.insertProductRegister(prvo);
	 * 
	 * 
	 * return "admin/productList"; }
	 */

	
	
	@GetMapping({ "/testCkeditor" })
	public String testCkeditor() {

		return "test/testCkeditor";
	}
}
