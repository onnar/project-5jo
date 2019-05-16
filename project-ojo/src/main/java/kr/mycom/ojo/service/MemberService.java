package kr.mycom.ojo.service;

import kr.mycom.ojo.model.MemberVo;

public interface MemberService {
	public void regist(MemberVo vo) throws Exception;
	public MemberVo login(MemberVo vo) throws Exception;
	public void update(MemberVo vo) throws Exception;
	public void withdrawal(MemberVo vo) throws Exception;
}
