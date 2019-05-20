package kr.mycom.ojo.service;

import java.util.List;

import kr.mycom.ojo.model.ReserveVo;

public interface ReserveService {
	public ReserveVo read(Integer gcode) throws Exception;
	
	public List<ReserveVo> listAll(int ucode) throws Exception;
	
}
