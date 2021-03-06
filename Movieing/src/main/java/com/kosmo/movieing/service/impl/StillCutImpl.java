package com.kosmo.movieing.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.StillCutDto;
import com.kosmo.movieing.service.StillCutService;

@Service("stillCutService")
public class StillCutImpl implements StillCutService{

		//StillCutDao 객체 주입
		@Resource(name="stillCutDao")
		private StillCutDao dao;
	
	
	@Override
	public StillCutDto searchStillcut(Map map) {
		System.out.println("StillcutImpl에서 호출");
		return dao.searchStillcut(map);
	
	}

	
}
