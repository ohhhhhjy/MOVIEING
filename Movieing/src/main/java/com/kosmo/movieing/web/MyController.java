package com.kosmo.movieing.web;

import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.kosmo.movieing.service.BuyDto;
import com.kosmo.movieing.service.BuyService;
import com.kosmo.movieing.service.NoticeDto;
import com.kosmo.movieing.service.NoticeService;
import com.kosmo.movieing.service.QnaDto;
import com.kosmo.movieing.service.QnaService;
import com.kosmo.movieing.service.ReviewService;
import com.kosmo.movieing.service.UserDto;
import com.kosmo.movieing.service.UserService;

@Controller
public class MyController {

	@Resource(name = "reviewService")
	private ReviewService reviewService;
	@Resource(name = "userService")
	private UserService userService;
	@Resource(name = "buyService")
	private BuyService buyService;
	@Resource(name = "qnaService")
	private QnaService qnaService;
	@Resource(name = "noticeService")
	private NoticeService noticeService;

	// 이미지 수정
	@PostMapping(value = "/Movieing/Blog/ImageUpdate.mov")
	public String imageUpdate(@RequestParam Map map, @RequestPart MultipartFile image, Model model,
			HttpServletRequest req, Principal principal) throws IllegalStateException, IOException {
		System.out.println("돼냐?");
		// 세션아이디
		String id = principal.getName();
		map.put("userid", id);
		// 확장자 찾기
		String original = image.getOriginalFilename();
		int index = original.lastIndexOf('.');
		if (index != -1) {
			String extension = original.substring(index, original.length());
			// File객체 생성
//				String filePath = "/Upload/"+map.get("userid")+extension;
//				File file =  new File(filePath);
			// String path = req.getSession().getServletContext().getRealPath("/Upload");
			String path = "C:/Users/kosmo_16/git/MOVIEING/Movieing/src/main/webapp/resources/Upload/";
			System.out.println("path" + path);
			// File file = new File(path+File.separator+image.getOriginalFilename());
			File file = new File(path + map.get("userid") + extension);
			System.out.println("filename : " + image.getOriginalFilename());
			image.transferTo(file);

			int indexUpload = path.indexOf("resources");
			String dbPath = "/movieing" + path.substring(indexUpload - 1) + map.get("userid") + extension;
			System.out.println("dbPath : " + dbPath);
			// map.put("file", filePath);
			map.put("file", dbPath);

			userService.updateImage(map);
		}
		map.put("id", id);
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);

		// return new
		// UserDto(map.get("name").toString(),map.get("age").toString(),map.get("addr").toString());
		return "blog/my/MyPage.tiles";

	}

	// 마이페이지1]
	@RequestMapping(value = "/Movieing/Blog/MyPage.mov", method = RequestMethod.GET)
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
	@RequestMapping(value = "/Movieing/Blog/MyPage2.mov", method = RequestMethod.POST)
	public String myPage2(@RequestParam Map map, Model model, Principal principal) {
		// 세션아이디
		String id = principal.getName();

		map.put("id", id);

		System.out.println("이름:" + map.get("username"));
		System.out.println("닉네임:" + map.get("nick"));
		System.out.println("펀:" + map.get("phone"));
		System.out.println("이메일:" + map.get("email"));
		System.out.println("자소:" + map.get("publicinfo"));

		// 수정한 정보업데이트
		int userUpdate = userService.update(map);
		// model.addAttribute("userUpdate", userUpdate);
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

	// 비밀번호 변경
	@RequestMapping("/Movieing/Blog/PassChange.mov")
	public String pass_change(@RequestParam Map map, Authentication auth, Model model) {
		String id = auth.getName();
		map.put("id", id);
		// update 성공/실패 확인용
		int flag = userService.updatePass(map);
		System.out.println("flag : " + flag);
		UserDto mypage = userService.selectOne(map);// 리스트전체조회
		model.addAttribute("mypage", mypage);
		model.addAttribute("flag", flag);
		return "blog/my/MyPage_Pass.tiles";
	}

	// 마이페이지_허용범위]
	@RequestMapping("/Movieing/Blog/MyPage_Permit.mov")
	public String myPage_Permit(@RequestParam Map map, Model model, Principal principal) {

		// 세션아이디
		String id = principal.getName();
		map.put("userId", id);
		List<BuyDto> list = buyService.selectList(map);
		// 내 아이디로 된 결제 있을 경우
		if (list.size() != 0) {
			model.addAttribute("buyList", list);
			System.out.println("buyList테스트용 : " + list.get(0).getNaming());
			System.out.println("buyList테스트용 : " + list.get(0).getUserId());
		}

		// 내 정보뿌려주기
		map.put("id", id);
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
	public String Customer(@RequestParam Map map, Authentication auth, Model model) {
		String id = auth.getName();
		// Q&A
		List<QnaDto> list = qnaService.selectList();
		model.addAttribute("qnaList", list);
		// 공지사항
		List<NoticeDto> selectNotiList = noticeService.selectList(map);
		model.addAttribute("selectNotiList", selectNotiList);

		return "my/Customer.tiles";
	}

	// 고객센터_글작성
	@RequestMapping("/Movieing/my/Customer_Write.mov")
	public String Customer_Write() {
		return "my/Customer_Write.tiles";
	}

	//고객센터_공지사항_글보기
	@RequestMapping("/Movieing/my/Customer_View_noti.mov")
	public String Customer_noti(Authentication auth, Model model, @RequestParam Map map) {
		int notiNo=Integer.parseInt(map.get("notiNo").toString());
		model.addAttribute("notiNo",  map.get("notiNo"));
		// 공지사항
		NoticeDto selectNotiOne = noticeService.selectOne(map);
		model.addAttribute("selectNotiOne", selectNotiOne);
		String id="관리자";
		model.addAttribute("id", id);
		//글 사이즈
		int size=noticeService.selectList(map).size();//2
		System.out.println("노티넘버:"+notiNo);//2

		if(notiNo +1 >= size) {//2+1>=2
			//이전글
			model.addAttribute("before", "이전 글이 없어요");
		}else {
			map.put("notiNo",notiNo+1);
			model.addAttribute("before", noticeService.selectOne(map).getNotiTitle());
		}

		if(notiNo-1 < 1) {
			//다음글
			model.addAttribute("after", "다음 글이 없어요");
		}else {
			map.put("notiNo",notiNo-1);
			model.addAttribute("after",noticeService.selectOne(map).getNotiTitle());
		}

		return "my/Customer_View_noti.tiles";
	}////////////////////

	// 공지 보기
	@RequestMapping("/Movieing/my/Notice.mov")
	public String notice(Authentication auth, Model model, @RequestParam Map map) {

		return "my/Notice.tiles";
	}

	// 작성글보기
	@RequestMapping("/Movieing/my/Customer_View.mov")
	public String Customer_View(Authentication auth, Model model, @RequestParam Map map) {
		String id = auth.getName();
		int qnaNo = Integer.parseInt(map.get("qnaNo").toString());
		QnaDto bbs = qnaService.selectOne(map);
		int size = qnaService.selectList().size();
		map.put("qnaNo", qnaNo + 1);
		String before = qnaNo + 1 >= size ? "이전 글이 없어요" : qnaService.selectOne(map).getQnaTitle();
		map.put("qnaNo", qnaNo - 1);
		String after = qnaNo - 1 <= 1 ? "다음 글이 없어요" : qnaService.selectOne(map).getQnaTitle();
		model.addAttribute("id", id);
		model.addAttribute("bbs", bbs);
		model.addAttribute("before", before);
		model.addAttribute("after", after);
		return "my/Customer_View.tiles";
	}

}
