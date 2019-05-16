package kr.mycom.ojo.service;

import java.util.List;

import kr.mycom.ojo.model.GroupVo;

public interface GroupService {
	public GroupVo read(Integer bno) throws Exception; 
	public void regist(GroupVo vo) throws Exception;
	public void modify(GroupVo vo) throws Exception;
	public void remove(int gcode) throws Exception;
	
	public List<GroupVo> listAll() throws Exception; 
	public List<GroupVo> listPage(int page)throws Exception;
															 
	
}
