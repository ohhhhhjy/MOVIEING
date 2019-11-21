package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.kosmo.movieing.service.UserService;

@Controller
public class ImageChangeAjaxController {
	
	@Resource(name="userService")
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/Ajax/ImageChange.mov", method = RequestMethod.POST)
	public void imageChange(@RequestParam Map map, @RequestPart MultipartFile image, HttpServletRequest req, Authentication auth) throws IllegalStateException, IOException {
		System.out.println("에이작수 들어오냐");
		String id = auth.getName();
		map.put("userid", id);
		String original = image.getOriginalFilename();
		int index = original.lastIndexOf('.');
		if(index!=-1) {
			String extension = original.substring(index, original.length());
			//File객체 생성
			String filePath = "/resources/Upload/"+map.get("userid")+extension;
			File file =  new File(filePath);
			System.out.println("filename : "+image.getOriginalFilename());
			image.transferTo(file);
			map.put("file", filePath);
			userService.updateImage(map);
		}

	}
	
	
	
}
