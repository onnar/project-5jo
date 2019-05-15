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

import kr.mycom.ojo.model.BoardVo;
import kr.mycom.ojo.persistance.BoardDao;
import kr.mycom.ojo.service.BoardService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;
	
	@RequestMapping("/boardView") // 그룹코드를 읽어서 해당 게시물 상세보기
	public void doA(@RequestParam("gcode") int gcode,Model model) {
		try {
			BoardVo vo =service.read(gcode);
			model.addAttribute("hi",vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value = "/boardModi", method = RequestMethod.GET) // 그룹코드를 읽어서(get방식으로) 그 해당 수정폼 뿌려주기 
	  public void modifyPagingGET(@RequestParam("gcode") int gcode,Model model) throws Exception {

	    model.addAttribute(service.read(gcode));
	  }
	@RequestMapping(value = "/boardModi", method = RequestMethod.POST) // save를 누르면 post방식으로 boardListView로 ㄱㄱ
	  public String modifyPagingPOST(BoardVo board, RedirectAttributes rttr) throws Exception {

		service.modify(board);
	    rttr.addFlashAttribute("msg", "SUCCESS");

	    logger.info(rttr.toString());

	    return "redirect:/boardListView";
	  }
	

	@RequestMapping(value = "/boardRemove", method = RequestMethod.GET)  //get방식으로 받아서 삭제하고 boardListView 바로출력
	  public String removegGET(@RequestParam("gcode") int gcode,@ModelAttribute("gcode") int m) throws Exception {

		service.remove(gcode);
	    return "redirect:/boardListView";
	  }
	  
	@RequestMapping(value = "/boardListView", method = RequestMethod.GET)
	public void list(Model model) {
		try {
			List<BoardVo> list =service.listAll();
			model.addAttribute("hi",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value = "/boardRegi", method = RequestMethod.GET)
	  public void registGET() throws Exception {

	    logger.info("regist get ...........");
	  }

	  @RequestMapping(value = "/boardRegi", method = RequestMethod.POST)
	  public String registPOST(BoardVo board, RedirectAttributes rttr) throws Exception {

	    logger.info("regist post ...........");
	    logger.info(board.toString());

	    service.regist(board);
	    return "redirect:boardListView";
	  }
	  
}
