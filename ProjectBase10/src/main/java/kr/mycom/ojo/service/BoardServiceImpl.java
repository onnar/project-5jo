package kr.mycom.ojo.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;


import kr.mycom.ojo.model.BoardVo;
import kr.mycom.ojo.persistance.BoardDao;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject 
	private BoardDao dao;

	@Override
	public BoardVo read(Integer gcode) throws Exception {
		return dao.read(gcode);
	}

	@Override
	public void regist(BoardVo vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void modify(BoardVo vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int gcode) throws Exception {
		dao.delete(gcode);
	}

	@Override
	public List<BoardVo> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<BoardVo> listPage(int page) throws Exception {
		return null;
	}

}
