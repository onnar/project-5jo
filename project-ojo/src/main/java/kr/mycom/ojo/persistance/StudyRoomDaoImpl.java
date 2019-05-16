package kr.mycom.ojo.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.ojo.model.Room_infoVo;
import kr.mycom.ojo.model.SearchCriteria;

@Repository
public class StudyRoomDaoImpl implements StudyRoomDao {
	@Inject
	private SqlSession session;

	private static String namespace = "kr.mycom.ojo.RoomMapper";

	@Override
	public List<Room_infoVo> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<Room_infoVo> listSearch(SearchCriteria cri) throws Exception {

		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {

		return session.selectOne(namespace + ".listSearchCount", cri);
	}
}
