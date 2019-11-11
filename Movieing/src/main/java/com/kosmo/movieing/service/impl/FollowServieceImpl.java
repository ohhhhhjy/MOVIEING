package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.FollowDto;
import com.kosmo.movieing.service.FollowService;

@Service("followService")
public class FollowServieceImpl implements FollowService{

	@Resource(name="followDao")
	private FollowDao dao;

	@Override
	public boolean isMember(Map map) {

		return dao.isMember(map);
	}

	@Override
	public List<FollowDto> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalFollowingCount(Map map) {

		return dao.getTotalFollowingCount(map);
	}

	@Override
	public int getTotalFollowerCount(Map map) {

		return dao.getTotalFollowerCount(map);
	}

	@Override
	public FollowDto selectOne(Map map) {

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




}
