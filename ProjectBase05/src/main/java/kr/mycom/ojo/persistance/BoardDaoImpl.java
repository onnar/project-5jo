package kr.mycom.ojo.persistance;

import java.nio.channels.SeekableByteChannel;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.mycom.ojo.model.BoardVo;

@Repository				//id 값은 boardDaoImpl
public class BoardDaoImpl implements BoardDao {

	@Inject //생성자 함수가 불릴 때 주입 ㄱㄱ (생성자나 setter함수 둘중하나)
	private SqlSession session; //연결 conn관련을 MyBatis에게 다 맡겨놓음 root-context.xml에
					//mapper를 컨트롤 할 수있다 session이 ㅎㅎ
	private static final String namespace="kr.mycom.ojo.BoardMapper"; 
	@Override
	public void getTime() {
		String sql = session.selectOne(namespace+".getTime");
		System.out.println(sql);
	}

	@Override
	public BoardVo read(Integer gcode) throws Exception {
		return session.selectOne(namespace+".read", gcode); //bno를 전달
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
	//예전같으면 이렇게 커넥션을 받아와야 했음
	
//	public BoardVo readOne(Connection conn, int bno) {
//		try {
//		Statement stmt = conn.createStatement(); //원래 이런걸 다했어야 함
//		String sql = "";
//		Resultset rs =stmt.executeQuery(sql);
//		}finally {
//			JDBCUtil.close(conn);
//		}
//	}
}


