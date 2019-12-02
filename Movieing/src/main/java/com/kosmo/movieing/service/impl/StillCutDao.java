package com.kosmo.movieing.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.StillCutDto;
import com.kosmo.movieing.service.StillCutService;

@Repository
public class StillCutDao implements StillCutService {

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public StillCutDto searchStillcut(Map map) {
		System.out.println("StillcutDao 호출");
		return template.selectOne("searchStillcut",map);
	}

}
