package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.FollowDto;
import com.kosmo.movieing.service.FollowService;

@Repository
public class FollowDao implements FollowService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isMember(Map map) {

		return false;
	}

	//팔로우 리스트
	@Override
	public List<FollowDto> selectFollowList(Map map) {

		return template.selectList("selectFollowList", map);
	}

	@Override
	public int getTotalFollowingCount(Map map) {

		return template.selectOne("getTotalFollowingCount",map);
	}

	@Override
	public int getTotalFollowerCount(Map map) {

		return template.selectOne("getTotalFollowerCount",map);
	}

	@Override
	public FollowDto selectOne(Map map) {

		return null;
	}

	@Override
	public int insert(Map map) {

		return template.insert("insertFollow",map);
	}

	@Override
	public int update(Map map) {

		return 0;
	}

	@Override
	public int delete(Map map) {

		return template.delete("deleteFollow",map);
	}

}
