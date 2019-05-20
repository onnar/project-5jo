package kr.mycom.ojo.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.ojo.model.ReserveVo;

@Repository
public class ReserveDaoImpl implements ReserveDao {
	
	@Inject
	private SqlSession session;

	private static final String namespace="kr.mycom.ojo.MemberMapper"; 
	
	@Override
	public ReserveVo read(Integer recode) throws Exception {
		return session.selectOne(namespace+".read", recode);
	}

	@Override
	public List<ReserveVo> listAll(int ucode) throws Exception {
		return session.selectList(namespace+".viewReserve", ucode);
	}

	
}
