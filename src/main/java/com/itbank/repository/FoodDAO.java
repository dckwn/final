package com.itbank.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.FoodDTO;
import com.itbank.model.NutritionDTO;

public interface FoodDAO {

	@Select("SELECT * "
			+ "FROM health_food "
			+ "ORDER BY DBMS_RANDOM.VALUE "
			+ "FETCH FIRST 20 ROWS ONLY")
	List<FoodDTO> selectList();

	@Insert ("insert into health_nutrition (userid, food_idx, meal_time) values (#{userid}, #{food_idx}, #{meal_time})")
	int insert(NutritionDTO nutritionDto);

}
