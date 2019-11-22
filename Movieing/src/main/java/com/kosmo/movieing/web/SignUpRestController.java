package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@RestController
public class SignUpRestController {

   @Resource(name="userService")
   private UserService userService;
   
   @PostMapping("/Movieing/member/SignUpProfile.mov")
   public String fileUpload(@RequestParam Map map,@RequestPart MultipartFile image,HttpServletRequest req) throws IllegalStateException, IOException {
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
      }
         //System.out.println(filePath);
      
      
      //return new UserDto(map.get("name").toString(),map.get("age").toString(),map.get("addr").toString());
      return "";

   }
   
}