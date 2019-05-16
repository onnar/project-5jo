
ProjectBase01  가장 기본 프로젝트 셋팅
* * *
ProjectBase02 myboard 데이터 가져옴
    []SampleController에  read인 doA 메서드 추가
    BoardDaoImpl에  read 메서드 추가
    boardMapper.xml의 <select> 추가
    doA.jsp 추가
* * *
ProjectBase03 
글등록o 한글처리 아직 x
    SampleController에  registPost메소드 (등록)추가
    boardMapper.xml의 <insert> 추가
    BoardDaoImpl에  insert 메서드 추가
    doA.jsp 를 boardView.jsp로 변경
    boardRegi.jsp 추가
* * *
ProjectBase04
하나테이터 가져오는거랑
리스트로 가져오는거
    SampleController에  list 메서드 추가(listAll)
    BoardDaoImpl에  listAll 메서드 추가
    boardMapper.xml의 <select> id=listAll추가
    boardListView.jsp 추가
* * *
ProjectBase05
글등록 한글처리 완료
하나테이터 가져오는거랑
리스트로 가져오는거
      web.xml에 <filter>추가해서 한글처리 완료
    ProjectBase04 와 ProjectBase05의 기능을 합침 
* * *
ProjectBase06
gcode로 불러오는거 boardView?gcode=13 이런식으로 boardModi?gcode=13
그리고 수정하는거 구현함
    SampleController에  modifyPagingGET 메서드 추가
    BoardDaoImpl에  update 메서드 추가
    boardMapper.xml의 <update> id=update추가
    boardModi.jsp 추가
* * *
ProjectBase07
boardRemove?gcode=12
    SampleController에  removegGET 메서드 추가
    BoardDaoImpl에  delete 메서드 추가
    boardMapper.xml의 <delete> id=delete추가
    boardRemove.jsp 추가
* * *
ProjectBase08
    kr.mycom.ojo.service 패키지 추가
    BoardService 인터페이스 추가
    BoardServiceImpl 클래스 crud 업데이트
  SampleController에 dao를 serivce로 바꿔줌 (일단 한번더 거치게만 한거임)

ProjectBase09
	 보류 재정렬

ProjectBase10
	boardListView 에 boardView로 상세페이지 가기 + 글등록(boardRegi)
	boardView(상세보기)에서 boardModi(수정하기), boardRemove(삭제하기)
	home(메인) boardListView 로 글등록가기
	boardModi.jsp 등록일자 제거
	boardRegi.jsp 등록일자 제거
	boardRegi.jsp   board bd set.parameter 제거~(스프링이 알아서 해줘)
