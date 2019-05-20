package kr.mycom.ojo.contoller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mycom.ojo.model.MemberVo;
import kr.mycom.ojo.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(GroupController.class);
	
	@Inject
	MemberService service;

	//회원가입
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET() {
		logger.info("regist get ...........");
		return "member/registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(MemberVo vo) throws Exception {
		logger.info("regist post ...........");
		logger.info(vo.toString());
		service.regist(vo);

		return "redirect:/member/success";
	}
	
	//회원가입완료
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success(MemberVo vo) throws Exception {
		logger.info("success get ...........");
		logger.info(vo.toString());

		return "/member/success";
	}
	
	//회원 로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		logger.info("login get ...........");
		
		return "member/loginForm";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPOST(MemberVo vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...........");
		logger.info(vo.toString());
		
		MemberVo login = service.login(vo);
		HttpSession session = req.getSession(true);

		if (login != null) {
			session.setAttribute("member", login);
		} else {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			
			return "redirect:/member/login";
		}
		
		return "redirect:/";
	}

	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("member");
		return "redirect:/";
	}

	//회원정보 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET() throws Exception {
		logger.info("modify get ...........");
		
		return "member/modifyForm";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(HttpSession session, MemberVo vo) throws Exception {
		logger.info("modify post ...........");
		logger.info(vo.toString());
		
		service.update(vo);
		return "redirect:/";
	}

	//회원탈퇴
	@RequestMapping(value = "/withdrawal", method = RequestMethod.GET)
	public String withdrawal(HttpSession session, MemberVo vo, RedirectAttributes rttr) throws Exception {
		logger.info(vo.toString());
		vo = (MemberVo) session.getAttribute("member");
		session.removeAttribute("member");
		service.withdrawal(vo);

		return "member/withdrawal";
	}
	
}