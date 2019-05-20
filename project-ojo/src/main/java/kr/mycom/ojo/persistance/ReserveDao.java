package kr.mycom.ojo.persistance;

import java.util.List;

import kr.mycom.ojo.model.ReserveVo;

public interface ReserveDao {
public ReserveVo read(Integer recode) throws Exception;
public List<ReserveVo> listAll(int ucode) throws Exception; 

}
