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

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardDao dao; 
	
	@RequestMapping("/boardView")
	public void doA(@RequestParam("gcode") int gcode,Model model) {
		try {
			BoardVo vo =dao.read(gcode);
			model.addAttribute("hi",vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value = "/boardModi", method = RequestMethod.GET)
	  public void modifyPagingGET(@RequestParam("gcode") int gcode,Model model) throws Exception {

	    model.addAttribute(dao.read(gcode));
	  }
	@RequestMapping(value = "/boardModi", method = RequestMethod.POST)
	  public String modifyPagingPOST(BoardVo board, RedirectAttributes rttr) throws Exception {

	    dao.update(board);
	    rttr.addFlashAttribute("msg", "SUCCESS");

	    logger.info(rttr.toString());

	    return "redirect:/boardListView";
	  }
	

	@RequestMapping(value = "/boardRemove", method = RequestMethod.GET)
	  public String removegGET(@RequestParam("gcode") int gcode,@ModelAttribute("gcode") int m) throws Exception {

	    dao.delete(gcode);
	    return "/boardRemove";
	  }
	  
	@RequestMapping(value = "/boardListView", method = RequestMethod.GET)
	public void list(Model model) {
		try {
			List<BoardVo> list =dao.listAll();
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

	    dao.insert(board);
	    return "redirect:boardListView";
	  }
	  
}
