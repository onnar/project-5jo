package kr.mycom.ojo;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.mycom.ojo.model.GroupVo;
import kr.mycom.ojo.persistance.GroupDao;


@RunWith(SpringJUnit4ClassRunner.class)								//spring�� mybatis ���������� ������
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDaoTest {													//�̰Ÿ� ���� �׽�Ʈ �����ϴϱ�
	
	@Inject
	GroupDao dao;
	
	@Test
	public void getTimeTest() throws Exception{
		dao.getTime();
	}
	
	@Test
	public void readTest() {
		try {
			GroupVo vo =dao.read(2);
			System.out.println(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


