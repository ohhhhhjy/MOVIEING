package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;

public interface MoviePeopleService {

	List<MoviePeopleDto> selectListPeople(Map map);
}
