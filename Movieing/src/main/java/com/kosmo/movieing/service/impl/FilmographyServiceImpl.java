package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.FilmographyDto;
import com.kosmo.movieing.service.FilmographyService;
@Service("filmographyService")
public class FilmographyServiceImpl implements FilmographyService {

	@Resource(name="filmographyDao")
	private FilmographyDao dao;
	
	
	@Override
	public List<FilmographyDto> selectFilmoList(Map map) {
		return dao.selectFilmoList(map);
	}

	
}
