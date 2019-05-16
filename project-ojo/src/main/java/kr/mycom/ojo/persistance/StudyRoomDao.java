package kr.mycom.ojo.persistance;

import java.util.List;

import kr.mycom.ojo.model.Criteria;
import kr.mycom.ojo.model.Room_infoVo;
import kr.mycom.ojo.model.SearchCriteria;

public interface StudyRoomDao {

	public List<Room_infoVo> listAll() throws Exception;

	public List<Room_infoVo> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
}
