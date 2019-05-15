package kr.mycom.ojo.service;

import java.util.List;

import kr.mycom.ojo.model.BoardVo;

public interface BoardService {
	public BoardVo read(Integer bno) throws Exception; 
	public void regist(BoardVo vo) throws Exception;
	public void modify(BoardVo vo) throws Exception;
	public void remove(int gcode) throws Exception;
	
	public List<BoardVo> listAll() throws Exception; 
	public List<BoardVo> listPage(int page)throws Exception;
															 
	
}
