package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Repository
public class UserDao implements UserService{

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public boolean isMember(Map map) {
		System.out.println("악"+((Integer)template.selectOne("isMember",map)==1));
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

	@Override
	public List<UserDto> selectFollowerList(Map map) {

		return template.selectList("selectFollowerList",map);
	}

	@Override
	public List<UserDto> selectFollowingList(Map map) {

		return template.selectList("selectFollowingList",map);
	}

	//유저닉네임으로 아이디 알아내기
	@Override
	public String selectUserId(String userNick) {

		return template.selectOne("selectUserId", userNick);
	}

	@Override
	public List<UserDto> userSelectList(Map map) {
		return template.selectList("userSelectList", map);
	}

	@Override
	public int insertSec(Map map) {
		return template.insert("insertSec", map);
	}

	@Override
	public List<UserDto> selectSearchList(Map map) {
		return template.selectList("selectSearchList",map);

	}



}
