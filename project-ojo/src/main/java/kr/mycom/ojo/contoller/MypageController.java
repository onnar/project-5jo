package kr.mycom.ojo.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {

	public String mypage() {
		return "/mypage/mypage";
	}
	
}
