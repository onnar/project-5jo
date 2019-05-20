package kr.mycom.ojo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.mycom.ojo.model.ReserveVo;
import kr.mycom.ojo.persistance.ReserveDao;

@Service
public class ReserveServiceImpl implements ReserveService {
	
	@Inject
	private ReserveDao dao;

	@Override
	public ReserveVo read(Integer recode) throws Exception {
		return dao.read(recode);
	}

	@Override
	public List<ReserveVo> listAll(int ucode) throws Exception {
		return dao.listAll(ucode);
	}

}
