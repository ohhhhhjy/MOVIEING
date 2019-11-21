package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface FilmographyService {

	List<FilmographyDto> selectFilmoList(Map map);
	
}
