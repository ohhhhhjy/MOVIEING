package com.kosmo.movieing.service;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.movieing.service.impl.BuyDao;
import com.kosmo.movieing.service.impl.UserDao;

@RestController
public class RestAPIController {
	
	//리액트용]
	@Resource(name="userDao")
	private UserDao userDao;
	
	@Resource(name="buyDao")
	private BuyDao buyDao;
	
	
	//전체 보기]
	@CrossOrigin(origins = "http://192.168.0.20:7080")
	@GetMapping(value="/api/user",produces = "application/json;charset=UTF-8")
	public List<UserDto> getUser(@RequestParam Map map){
		List<UserDto> users = new Vector<UserDto>();
		
		users = userDao.selectAllUserList(map);
		
		
		int start = Integer.parseInt((String)map.get("start"))-1;
		int pageSize = Integer.parseInt((String)map.get("pageSize"));

		List<UserDto> pageList = users.subList(
				Integer.parseInt((String)map.get("start"))>users.size()?start-pageSize:start
						,start+pageSize<users.size()?start+pageSize:users.size()
			);
		return pageList;
	}
	
	@CrossOrigin(origins = "http://192.168.0.20:7080")
	@GetMapping("/api/user/total")
	public String getUsersTotal(@RequestParam Map map) {
		int total=userDao.getTotalCount(map);
		return String.valueOf(total);
	}
	
	@CrossOrigin(origins = "http://192.168.0.20:7080")
	@GetMapping("/api/user/delete")
	public int userOut(@RequestParam Map map) {
		return userDao.delete(map);
	}
	
	@CrossOrigin(origins = "http://192.168.0.20:7080")
	@GetMapping("/api/user/buylist")
	public List<BuyDto> getBuyList(@RequestParam Map map) {
	
		
		return buyDao.selectList(map);
	}
	
	@CrossOrigin(origins = "http://192.168.0.20:7080")
	@GetMapping("/api/user/buycount")
	public int getBuyCount(@RequestParam Map map) {

		map.replace("userId", (String)map.get("userId"));
		return buyDao.totalCount(map);
	}
	
}
