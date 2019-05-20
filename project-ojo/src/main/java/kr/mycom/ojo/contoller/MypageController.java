package kr.mycom.ojo.contoller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.mycom.ojo.model.GroupVo;
import kr.mycom.ojo.model.MemberVo;
import kr.mycom.ojo.model.ReserveVo;
import kr.mycom.ojo.service.GroupService;
import kr.mycom.ojo.service.ReserveService;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@RequestMapping("main")
	public String mypage(HttpSession session,MemberVo vo, Model model) throws Exception{
		logger.info("mypage main....");
		return "mypage/main";
	}
	/*
	@Inject
	GroupService gservice;
	ReserveService rservice;
	
	@RequestMapping("/main")
	public String mypage(HttpSession session,MemberVo vo, Model model) throws Exception{
		System.out.println(">>>>>>>>>>>> myPage에 BoardView랑 reserve 불러!!!" );
		int ucode =(int)session.getAttribute("userCode");
		System.out.println(">>>>>>>>>>>>>>>>>> " + ucode);
		
		
		List<GroupVo> list = gservice.listAll(ucode);
		System.out.println(">>>>>>>>>>>>>>>>>> " + list);
		model.addAttribute("li",list);
		
		List<ReserveVo> rlist = rservice.listAll(ucode);
		System.out.println(">>>>>>>>> 이거 나오나ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ" + rlist);
		model.addAttribute("reserve", rlist);
		return "/mypage/main";
	}
	*/
	
}
