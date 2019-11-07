package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.ReviewDto;
import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Repository
public class UserDao implements UserService{

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean isMember(Map map) {
		
		return (Integer)template.selectOne("isMember",map)==1?true:false;
	}

	@Override
	public List<UserDto> selectList(Map map) {
		
		return template.selectList("userList",map);
	}

	@Override
	public int getTotalCount(Map map) {
		
		return template.selectOne("userTotal",map);
	}

	@Override
	public UserDto selectOne(Map map) {
		
		return template.selectOne("userSelectOne",map);
	}

	@Override
	public int insert(Map map) {
		
		return template.insert("userInsert", map);
	}

	@Override
	public int update(Map map) {
		
		return template.insert("userUpdate", map);
	}

	@Override
	public int delete(Map map) {
		
		return template.insert("userDelete", map);
	}

	

}
