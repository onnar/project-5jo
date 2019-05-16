package kr.mycom.ojo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.mycom.ojo.model.GroupVo;
import kr.mycom.ojo.persistance.GroupDao;

@Service
public class GroupServiceImpl implements GroupService {

	@Inject 
	private GroupDao dao;
	
	@Override
	public GroupVo read(Integer gcode) throws Exception {
		return dao.read(gcode);
	}

	@Override
	public void regist(GroupVo vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void modify(GroupVo vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int gcode) throws Exception {
		dao.delete(gcode);
	}

	@Override
	public List<GroupVo> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<GroupVo> listPage(int page) throws Exception {
		return null;
	}
}
