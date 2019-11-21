package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.movieing.service.impl.UserDao;

@RestController
public class RestAPIController {
	
	//리액트용]
	
	@Resource(name="userDao")
	private UserDao userDao;
	
	
	//전체 보기]
	@CrossOrigin
	@GetMapping(value="/api/user",produces = "application/json;charset=UTF-8")
	public List<UserDto> getUser(@RequestParam Map map){
		List<UserDto> users = new Vector<UserDto>();
		
		users = userDao.selectAllUserList(map);
		
		//System.out.println(users.get(0).userId);
		return users;
	}
	
}
