package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.FoodDTO;
import com.itbank.model.NutritionDTO;
import com.itbank.repository.FoodDAO;

@Service
public class FoodService {

	@Autowired private FoodDAO foodDao;

	public List<FoodDTO> getList() {
		return foodDao.selectList();
	}

	public int addFood(NutritionDTO nutritionDto) {
		return foodDao.insert(nutritionDto);
	}
	
}
