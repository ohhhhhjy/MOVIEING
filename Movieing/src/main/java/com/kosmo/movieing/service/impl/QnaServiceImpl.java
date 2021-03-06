package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.QnaDto;
import com.kosmo.movieing.service.QnaService;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

	@Resource(name="qnaDao")
	private QnaDao dao;
	

	@Override
	public List<QnaDto> selectList() {
		return dao.selectList();
	}


	@Override
	public QnaDto selectOne(Map map) {
		return dao.selectOne(map);
	}


	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int delete(Map map) {
		return dao.delete(map);
	}

	@Override
	public int reply(Map map) {
		return dao.reply(map);
	}


	

}
