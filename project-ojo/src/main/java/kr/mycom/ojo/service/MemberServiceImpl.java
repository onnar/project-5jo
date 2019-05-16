package kr.mycom.ojo.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.mycom.ojo.model.MemberVo;
import kr.mycom.ojo.persistance.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDao dao;

	@Override
	public void regist(MemberVo vo) throws Exception {
		dao.regist(vo);
	}

	@Override
	public MemberVo login(MemberVo vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void update(MemberVo vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void withdrawal(MemberVo vo) throws Exception {
		dao.withdrawal(vo);
	}

}
