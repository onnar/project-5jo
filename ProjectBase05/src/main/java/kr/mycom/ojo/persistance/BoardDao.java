package kr.mycom.ojo.persistance;

import java.util.List;

import kr.mycom.ojo.model.BoardVo;

public interface BoardDao {
	public void getTime();
	//보통 셀렉문장 세가지 기본 패턴임  
	public BoardVo read(Integer bno) throws Exception; //인수하나 받아서 하나출력
	public List<BoardVo> listAll() throws Exception; //모든거 다 가져옴
	public List<BoardVo> listPage(int page)throws Exception; //해당 페이지 파라메터를 받아서
															 //출력할 레코드를 가져오는애
	public void insert(BoardVo vo) throws Exception;
}


