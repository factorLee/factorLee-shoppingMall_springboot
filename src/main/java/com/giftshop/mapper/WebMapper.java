package com.giftshop.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.giftshop.vo.ProductRegisterVO;
import com.giftshop.vo.testVO;


@Repository
@Mapper
public interface WebMapper {

	List<ProductRegisterVO> selectProductRegister();
	
	void insertProductRegister(ProductRegisterVO prvo);

}
