package com.pk.biz;

import java.util.List;

import com.pk.dao.RecipeDao;
import com.pk.dto.RecipeDto;

public class RecipeBiz {
	
	private RecipeDao dao = new RecipeDao();
	
	public List<RecipeDto> selectList(){
		
		return dao.selectList();
	}
	
	public int insert(List<RecipeDto> list) {
		
		return dao.insert(list);
	}

}
