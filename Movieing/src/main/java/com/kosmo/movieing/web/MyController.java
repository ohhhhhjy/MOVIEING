package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Controller
public class MyController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;
	@Resource(name="userService")
	private UserService userService;
	
	//이미지 수정
	@PostMapping(value = "/Movieing/Blog/ImageUpdate.mov")
		public String imageUpdate(@RequestParam Map map,@RequestPart MultipartFile image, Model model, HttpServletRequest req, Principal principal) throws IllegalStateException, IOException {
			System.out.println("돼냐?");
			// 세션아이디
			String id = principal.getName();
			map.put("userid", id);	
			//확장자 찾기
			String original = image.getOriginalFilename();
			int index = original.lastIndexOf('.');
			if(index!=-1) {
				String extension = original.substring(index, original.length());
				//File객체 생성
//				String filePath = "/Upload/"+map.get("userid")+extension;
//				File file =  new File(filePath);
				//String path = req.getSession().getServletContext().getRealPath("/Upload");
				String path = "C:/Users/kosmo_16/git/MOVIEING/Movieing/src/main/webapp/resources/Upload/";
				System.out.println("path"+path);
				//File file =  new File(path+File.separator+image.getOriginalFilename());
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
			map.put("id", id);	
			UserDto mypage = userService.selectOne(map);// 리스트전체조회
			model.addAttribute("mypage", mypage);
			
			//return new UserDto(map.get("name").toString(),map.get("age").toString(),map.get("addr").toString());
			return "blog/my/MyPage.tiles";
		
		}
		

	// 마이페이지1]
	@RequestMapping(value = "/Movieing/Blog/MyPage.mov" ,method=RequestMethod.GET)
	public String myPage(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		System.out.println("내정보 가져오기 성공적");

		return "blog/my/MyPage.tiles";
	}

	// 마이페이지2]
	@RequestMapping(value = "/Movieing/Blog/MyPage2.mov" ,method=RequestMethod.POST)
	public String myPage2(@RequestParam Map map, Model model, Principal principal) {
		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		System.out.println("이름:"+map.get("username"));
		System.out.println("닉네임:"+map.get("nick"));
		System.out.println("펀:"+map.get("phone"));
		System.out.println("이메일:"+map.get("email"));
		System.out.println("자소:"+map.get("publicinfo"));

		//수정한 정보업데이트
		int userUpdate=userService.update(map);
		//model.addAttribute("userUpdate", userUpdate);
		System.out.println("수정햇음");

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);

		return "blog/my/MyPage.tiles";

	}




	// 마이페이지_비밀번호]
	@RequestMapping("/Movieing/Blog/MyPage_Pass.mov")
	public String myPage_Pass(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Pass.tiles";
	}

	// 마이페이지_허용범위]
	@RequestMapping("/Movieing/Blog/MyPage_Permit.mov")
	public String myPage_Permit(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Permit.tiles";
	}

	// 마이페이지_알림]
	@RequestMapping("/Movieing/Blog/MyPage_Notice.mov")
	public String myPage_Notice(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Notice.tiles";
	}

	// 마이페이지_문의]
	@RequestMapping("/Movieing/Blog/MyPage_QnA.mov")
	public String myPage_QnA(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_QnA.tiles";
	}

	// 마이페이지_도움말]
	@RequestMapping("/Movieing/Blog/MyPage_Help.mov")
	public String myPage_Help(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		// 내 정보뿌려주기
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		return "blog/my/MyPage_Help.tiles";
	}
///////////////////////////////////////////////////////////////

	// 고객센터_메인
	@RequestMapping("/Movieing/my/Customer.mov")
	public String Customer() {
		return "my/Customer.tiles";
	}

	// 고객센터_글작성
	@RequestMapping("/Movieing/my/Customer_Write.mov")
	public String Customer_Write() {
		return "my/Customer_Write.tiles";
	}

	// 공지 보기
	@RequestMapping("/Movieing/my/Notice.mov")
	public String notice() {
		return "my/Notice.tiles";
	}

	// 작성글보기
	@RequestMapping("/Movieing/my/Customer_View.mov")
	public String Customer_View() {
		return "my/Customer_View.tiles";
	}

}
