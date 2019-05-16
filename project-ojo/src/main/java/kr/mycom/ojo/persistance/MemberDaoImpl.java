package kr.mycom.ojo.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.ojo.model.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Inject
	private SqlSession sql;

	private static String namespace = "kr.mycom.ojo.MemberMapper";

	@Override
	public void regist(MemberVo vo) throws Exception {
		sql.insert(namespace + ".join", vo);
	}

	@Override
	public MemberVo login(MemberVo vo) throws Exception {
		return sql.selectOne(namespace + ".login", vo);
	}

	@Override
	public void update(MemberVo vo) throws Exception {
		sql.update(namespace + ".update", vo);
	}

	@Override
	public void withdrawal(MemberVo vo) throws Exception {
		sql.delete(namespace + ".withdrawal", vo);
	}

}
