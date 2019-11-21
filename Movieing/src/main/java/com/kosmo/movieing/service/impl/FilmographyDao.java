package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.FilmographyDto;
import com.kosmo.movieing.service.FilmographyService;
@Repository
public class FilmographyDao implements FilmographyService {

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	
	@Override
	public List<FilmographyDto> selectFilmoList(Map map) {
		return template.selectList("selectFilmoList",map);
	}

}
