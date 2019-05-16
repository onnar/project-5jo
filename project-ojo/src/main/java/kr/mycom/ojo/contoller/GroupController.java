package kr.mycom.ojo.contoller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.mycom.ojo.model.GroupVo;
import kr.mycom.ojo.service.GroupService;

@Controller
@RequestMapping("/group/*")
public class GroupController {
	private static final Logger logger = LoggerFactory.getLogger(GroupController.class);
	
	@Inject
	private GroupService service;

	@RequestMapping("/view") // 그룹코드를 읽어서 해당 게시물 상세보기
	public String view(@RequestParam("gcode") int gcode, Model model) {
		try {
			GroupVo vo = service.read(gcode);
			model.addAttribute("hi", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "group/view";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		try {
			List<GroupVo> list = service.listAll();
			model.addAttribute("hi", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "group/list";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registGET() throws Exception {
		logger.info("regist get ...........");
		return "group/registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(GroupVo board, RedirectAttributes rttr) throws Exception {
		logger.info("regist post ...........");
		logger.info(board.toString());

		service.regist(board);
		return "redirect:/group/list";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET) // 그룹코드를 읽어서(get방식으로) 그 해당 수정폼 뿌려주기
	public String modifyGET(@RequestParam("gcode") int gcode, Model model) throws Exception {
		model.addAttribute(service.read(gcode));
		return "group/modifyForm";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST) // save를 누르면 post방식으로 list로 redirect
	public String modifyPOST(GroupVo board, RedirectAttributes rttr) throws Exception {
		service.modify(board);
		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());
		return "redirect:/group/list";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String removeGET(@RequestParam("gcode") int gcode, @ModelAttribute("gcode") int m) throws Exception {
		service.remove(gcode);
		return "group/remove";
	}
	  
}