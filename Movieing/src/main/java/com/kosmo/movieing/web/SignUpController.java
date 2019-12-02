package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.movieing.service.UserService;

@Controller
public class SignUpController {
	
	@Resource(name="userService")
	private UserService userService;

	@RequestMapping(value = "/Movieing/member/SignUp.mov" , method = RequestMethod.POST)
	public String SingUp(@RequestParam Map map, Model model) {
		userService.insert(map);
		userService.insertSec(map);
		model.addAttribute("userid", map.get("userid"));
		return "member/SignUpProfile.tiles";
	}
	
	@RequestMapping("/Movieing/member/SignUpProfile.mov")
	   public String fileUpload(@RequestParam Map map,@RequestPart MultipartFile image,HttpServletRequest req, Model model) throws IllegalStateException, IOException {
	      //확장자 찾기
	      String original = image.getOriginalFilename();
	      int index = original.lastIndexOf('.');
	      if(index!=-1) {
	         String extension = original.substring(index, original.length());
	         //File객체 생성
	         String path = "C:/Users/kosmo_16/git/MOVIEING/Movieing/src/main/webapp/resources/Upload/";
	         File file = new File(path + map.get("userid")+extension);
				System.out.println("filename : "+image.getOriginalFilename());
				image.transferTo(file);
				
				int indexUpload = path.indexOf("resources");
				String dbPath = "/movieing"+path.substring(indexUpload-1)+map.get("userid")+extension;
				System.out.println("dbPath : "+dbPath);
				//map.put("file", filePath);
				map.put("file", dbPath);
				
				userService.updateImage(map);
				System.out.println("괄호 안 ");
	      }
	         //System.out.println(filePath);
	      
	      model.addAttribute("member", "member");
	      System.out.println("괄호 밖 ");
	      //return new UserDto(map.get("name").toString(),map.get("age").toString(),map.get("addr").toString());
	      return "member/Login.tiles";

	   }
	
}
