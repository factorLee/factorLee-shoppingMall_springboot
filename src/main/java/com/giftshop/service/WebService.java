package com.giftshop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giftshop.mapper.WebMapper;
import com.giftshop.vo.ProductRegisterVO;
import com.giftshop.vo.testVO;

@Service
public class WebService {

	@Autowired
	public WebMapper wMapper;

	public List<ProductRegisterVO> selectProductRegister() {
		// TODO Auto-generated method stub
		return wMapper.selectProductRegister();
	}

	public boolean insertProductRegister(ProductRegisterVO prvo) {
		// TODO Auto-generated method stub
		/* wMapper.insertProductRegister(prvo); */

	    try {
	    	wMapper.insertProductRegister(prvo);
	        return true;
	      } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	      } 

	}

}