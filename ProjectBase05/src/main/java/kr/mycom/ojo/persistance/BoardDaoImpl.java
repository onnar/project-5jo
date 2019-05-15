package kr.mycom.ojo.persistance;

import java.nio.channels.SeekableByteChannel;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.ojo.model.BoardVo;

@Repository				//id ���� boardDaoImpl
public class BoardDaoImpl implements BoardDao {

	@Inject //������ �Լ��� �Ҹ� �� ���� ���� (�����ڳ� setter�Լ� �����ϳ�)
	private SqlSession session; //���� conn������ MyBatis���� �� �ðܳ��� root-context.xml��
					//mapper�� ��Ʈ�� �� ���ִ� session�� ����
	private static final String namespace="kr.mycom.ojo.BoardMapper"; 
	@Override
	public void getTime() {
		String sql = session.selectOne(namespace+".getTime");
		System.out.println(sql);
	}

	@Override
	public BoardVo read(Integer gcode) throws Exception {
		return session.selectOne(namespace+".read", gcode); //bno�� ����
	}

	@Override
	public List<BoardVo> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<BoardVo> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(BoardVo vo) throws Exception {
		session.insert(namespace+".insert",vo);
	}
	//���������� �̷��� Ŀ�ؼ��� �޾ƿ;� ����
	
//	public BoardVo readOne(Connection conn, int bno) {
//		try {
//		Statement stmt = conn.createStatement(); //���� �̷��� ���߾�� ��
//		String sql = "";
//		Resultset rs =stmt.executeQuery(sql);
//		}finally {
//			JDBCUtil.close(conn);
//		}
//	}
}


