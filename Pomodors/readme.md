이번에 배운 내용들


1. stateless % stateful
     -데이터 변경사항 없이 UI를 바로바로 띄워줄 때 >> stateless
     -변경되는 데이터를 받아서 UI 및 기타 메소드들에게 전달하는(되는) 인자가 있을 때 >> stateful

2. setstate()
     -변경되는 데이터를 실행함수에 전달하는 법 // 함수의 데이터 값에 상태변화가 있을 경우 모두 setstate에 집어넣어서       refresh 시켜준다.

3. BuildContext context
      -context는 상속한 모든 부모 노드들의 정보를 담고 있음 // 몇세대가 차이나던(고고고고조할아버지) context. 으로         꺼낼 수 있다.

4. etcs..
     -initState() - 인자 초기화 함수 // 일반적 작성 시 안써도 무방하나, 상속된 인자값을 재설정 할 때는 반드시 써줘                      야 됨 // 코드 실행시 최초에만 동작하고 다시는 호출되지 않음
     -dispose() - 위젯을 삭제할때 사용하는 함수

