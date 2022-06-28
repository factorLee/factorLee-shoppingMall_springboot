package com.giftshop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.giftshop.service.WebService;



@Controller
@RequestMapping({"/"})
public class UserController {


	@Autowired
	WebService wService;
	
	@Autowired
	ResourceLoader resourceLoader;

	
	@GetMapping({"/"})
	public String login(Model model) {//검색조건 추가 필요
		
		return "main";
	}
	
	
}
