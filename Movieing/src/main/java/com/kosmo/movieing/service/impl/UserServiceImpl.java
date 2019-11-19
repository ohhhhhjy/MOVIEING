package com.kosmo.movieing.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	//UserDao 객체 주입
	@Resource(name="userDao")
	private UserDao dao;

	@Override
	public boolean isMember(Map map) {

		return dao.isMember(map);
	}

	@Override
	public List<UserDto> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalCount(Map map) {

		return dao.getTotalCount(map);
	}

	@Override
	public UserDto selectOne(Map map) {

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
	public List<UserDto> selectFollowerList(Map map) {

		return dao.selectFollowerList(map);
	}

	@Override
	public List<UserDto> selectFollowingList(Map map) {

		return dao.selectFollowingList(map);
	}

	@Override
	public List<UserDto> userSelectList(Map map) {
		return dao.userSelectList(map);
	}

	@Override
	public int insertSec(Map map) {

		return dao.insertSec(map);
	}
	@Override
	public List<UserDto> selectSearchList(Map map) {
		return dao.selectSearchList(map);

	}

	//유저닉네임으로 아이디 알아내기
	@Override
	public String selectUserId(String userNick) {

		return dao.selectUserId(userNick);
	}

}
