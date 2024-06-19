플러터 상태관리 솔루션 - 공식 상태관리방법은 없으나 유저들이 만든 패키지를 이용해 상태관리를 수행한다
  provider
   dependency injection(의존성 주입) - 멀리 떨어진 두 위젯 사이에 연결고리를 직접적으로 만들어주는 것
                                      필요한 변수를 전달받기 위해 위젯트리를 타고 올라가는 오버헤드를 줄일 수 있음

   ChangeNotifier, addListener - 변수의 변경사항을 알려준다. 변경을 감지해야되는 위치에 notifyListeners()를 사용
                                 변경을 수신하는 위치에서 addListener()를 사용
                                 // addListener는 자동으로 dispose되지 않는다!

  
