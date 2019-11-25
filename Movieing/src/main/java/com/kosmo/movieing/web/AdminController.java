package com.kosmo.movieing.web;

import java.nio.file.FileSystems;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.movieing.service.NoticeDto;
import com.kosmo.movieing.service.NoticeService;
import com.kosmo.movieing.service.QnaDto;
import com.kosmo.movieing.service.QnaService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@CrossOrigin(origins = "http://localhost:3000")
@Controller
public class AdminController {
	
	@Resource(name="qnaService")
	private QnaService qnaService;
	
	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	@Resource(name="userService")
	private UserService userService;
	
	

	// 관리자페이지]
	@RequestMapping("/Movieing/admin/admin_main.mov")
	public String admin_main(@RequestParam Map map,Model model) {
		
		int totalUser = userService.getTotalCount(map);
		model.addAttribute("totalUser",totalUser);
		
		return "admin/admin_main.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_usermanagement.mov")
	public String admin_usermanagement(@RequestParam Map map, Model model) {
		
		List<UserDto> userList = userService.selectAllUserList(map);
		model.addAttribute("user",userList);
		
		return "admin/admin_usermanagement.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_iframe.mov")
	public String admin_iframe(@RequestParam Map map, Model model) {
		
		
		return "react/index";
	}
	
	
	@RequestMapping("/Movieing/admin/admin_qna.mov")
	public String admin_qna(@RequestParam Map map, Model model) {
		
		List<QnaDto> qnaList = qnaService.selectList();
		
		
		JSONArray qnaJson = new JSONArray();
		for(int i=0;i<qnaList.size();i++) {
			
			JSONObject json = new JSONObject();
			json.put("qnaNo",qnaList.get(i).getQnaNo());
			json.put("qnaTitle",qnaList.get(i).getQnaTitle());
			json.put("qnaContent",qnaList.get(i).getQnaContent());
			json.put("qnaAnswer",qnaList.get(i).getQnaAnswer()==null?"현재 답변 없음.":qnaList.get(i).getQnaAnswer());
			json.put("qnaPostdate",qnaList.get(i).getPostdate().toString());
			json.put("qnaUserId",qnaList.get(i).getUserId());
			qnaJson.add(i,json);
			
		}
		
		
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("qnaJson",qnaJson);
		
		return "admin/admin_qna.admin";
	}

	@RequestMapping("/Movieing/admin/admin_announce.mov")
	public String admin_announce(@RequestParam Map map, Model model, HttpServletRequest req) {
		
		if (req.getMethod().equals("POST")&&map.get("mtd").equals("WRT")) {
			
			String notiTitle = map.get("title").toString();
			String notiContent = map.get("content").toString();
			
			map.put("notiTitle", notiTitle);
			map.put("notiContent", notiContent);
			
			int insertNotice = noticeService.insert(map);
			
		}
		else if(req.getMethod().equals("POST")&&map.get("mtd").equals("EDT")) {
			
			String notiTitle = map.get("title").toString();
			String notiContent = map.get("content").toString();
			String notiNo = map.get("no").toString();
			map.put("notiNo", notiNo);
			map.put("notiTitle", notiTitle);
			map.put("notiContent", notiContent);
			
			int updateNotice = noticeService.update(map);
			
		}
		
		
		List<NoticeDto> notiList = noticeService.selectList(map);
		
		JSONArray notiJson = new JSONArray();
		for(int i=0;i<notiList.size();i++) {
			
			JSONObject json = new JSONObject();
			json.put("notiNo",notiList.get(i).getNotiNo());
			json.put("notiTitle",notiList.get(i).getNotiTitle());
			json.put("notiContent",notiList.get(i).getNotiContent());
			json.put("notiDate",notiList.get(i).getNotiDate().toString());
			notiJson.add(i,json);
			
		}
		
		model.addAttribute("notiList", notiList);
		model.addAttribute("notiJson",notiJson);
		
		
		return "admin/admin_announce.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_awrite.mov")
	public String admin_announce_write(@RequestParam Map map, Model model) {
		
		
		return "admin/admin_awrite.admin";
	}
	
	@RequestMapping("/Movieing/admin/admin_aedit.mov")
	public String admin_announce_edit(@RequestParam Map map, Model model) {
		
		String notiNo = (String)map.get("no");
		map.put("notiNo", notiNo);
		
		NoticeDto dto = noticeService.selectOne(map);
		
		model.addAttribute("dto",dto);
		
		return "admin/admin_aedit.admin";
	}
	


}//////// class
