package kr.mycom.ojo;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.mycom.ojo.model.BoardVo;
import kr.mycom.ojo.persistance.BoardDao;


@RunWith(SpringJUnit4ClassRunner.class)								//spring�� mybatis ���������� ������
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDaoTest {													//�̰Ÿ� ���� �׽�Ʈ �����ϴϱ�
	
	@Inject
	BoardDao dao;
	
	@Test
	public void getTimeTest() throws Exception{
		dao.getTime();
	}
	
	@Test
	public void readTest() {
		try {
			BoardVo vo =dao.read(2);
			System.out.println(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


