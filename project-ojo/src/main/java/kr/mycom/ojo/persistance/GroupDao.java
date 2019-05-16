package kr.mycom.ojo.persistance;

import java.util.List;

import kr.mycom.ojo.model.GroupVo;

public interface GroupDao {
	public void getTime();
	public GroupVo read(Integer gcode) throws Exception;
	public List<GroupVo> listAll() throws Exception;
	public List<GroupVo> listPage(int page)throws Exception;
	public void insert(GroupVo vo) throws Exception;
	public void update(GroupVo vo) throws Exception;
	public void delete(int gcode) throws Exception;	
}


