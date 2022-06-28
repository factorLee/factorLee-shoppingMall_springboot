package com.giftshop.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.giftshop.vo.ProductRegisterVO;
import com.google.gson.JsonObject;

@Controller
@RequestMapping(value = "/web", method = { RequestMethod.GET, RequestMethod.POST })
public class FileController {
	@ResponseBody
	@PostMapping("/thumbnailUpload.do")
    public String addImage2(@RequestParam("file1") MultipartFile uploadFile,
                            HttpServletRequest request, HttpServletResponse response, Model model,
                            ProductRegisterVO prvo) {
        String fileName = uploadFile.getOriginalFilename();
        String fileName2 = UUID.randomUUID().toString();
        
        String filePath = request.getSession().getServletContext().getRealPath("/thumbnail");
        try {
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
		/*return filePath + "\\" + fileName2 + "_" + fileName;*/
		/* return "admin/itemUpload"; */
		return "test";
        
    }
	
	
	
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/thumbnailUpload.do") public void
	 * addImage2(@RequestParam("pr_thumbnail") MultipartFile uploadFile,
	 * HttpServletRequest request, ProductRegisterVO prvo) {
	 * 
	 * String fileName = uploadFile.getOriginalFilename(); String fileName2 =
	 * UUID.randomUUID().toString();
	 * 
	 * String filePath =
	 * request.getSession().getServletContext().getRealPath("/thumbnail");
	 * 
	 * try { uploadFile.transferTo(new File(filePath + "\\" + fileName2 + "_" +
	 * fileName)); System.out.println("이미지 파일 저장 완료"); System.out.println(fileName);
	 * System.out.println(fileName2); System.out.println(filePath);
	 * System.out.println(filePath + "\\" + fileName2 + "_" + fileName);
	 * 
	 * prvo.setPr_thumbnail(filePath + "\\" + fileName2 + "_" + fileName);
	 * System.out.println(prvo.getPr_thumbnail()); } catch (IllegalStateException |
	 * IOException e) { e.printStackTrace(); }
	 * 
	 * }
	 */
	 
}