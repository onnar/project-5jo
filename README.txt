
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
