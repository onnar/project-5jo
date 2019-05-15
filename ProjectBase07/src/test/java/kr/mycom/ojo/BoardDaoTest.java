package kr.mycom.ojo;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.mycom.ojo.model.BoardVo;
import kr.mycom.ojo.persistance.BoardDao;


@RunWith(SpringJUnit4ClassRunner.class)								//spring의 mybatis 설정정보가 있으니
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BoardDaoTest {													//이거만 돌면 테스트 가능하니까
	
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


