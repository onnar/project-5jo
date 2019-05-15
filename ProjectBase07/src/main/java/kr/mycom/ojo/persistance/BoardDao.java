package kr.mycom.ojo.persistance;

import java.util.List;

import kr.mycom.ojo.model.BoardVo;

public interface BoardDao {
	public void getTime();
	//���� �������� ������ �⺻ ������  
	public BoardVo read(Integer bno) throws Exception; //�μ��ϳ� �޾Ƽ� �ϳ����
	public List<BoardVo> listAll() throws Exception; //���� �� ������
	public List<BoardVo> listPage(int page)throws Exception; //�ش� ������ �Ķ���͸� �޾Ƽ�
															 //����� ���ڵ带 �������¾�
	public void insert(BoardVo vo) throws Exception;
	public void update(BoardVo vo) throws Exception;
	public void delete(int gcode) throws Exception;
}


