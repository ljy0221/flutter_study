future >> 미래에 받아올 값을 저장하는 타입
		> api사용할때 request 와 response 사이에서 값을 저장하고 있는 value
		> async programming(비동기)
		
await  >>비동기 함수에서만 사용할 수 있는 함수로 api가 값을 받아올 때 까지 코드를 대기시키는 함수로
		> 사용하기 위해서는 void function () async {}를 붙여줘야됨
		
statuscode == 200 >> 통신이 성공했음

named constructure 복습

stateful condition 에서 데이터 fetching하기
 List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

stateless condition에서 data fetching하기
FutureBuilder 이용하기
	future: 기다릴 데이터 이름
	builder: (context, snapshot)기다리면서 실행할 내용
		snapshot -> future의 상태
		
ListView
	대량의 데이터를 연속적으로 보여줄 때 사용
	한번에 다 보여주면 memory overflow 날수도 있음
	
	(최적화)
	listview.builder 사용하기
		scrollDirection: 스크롤 방향 조정 종/횡
		itemCount: 한번에 불러올 인스턴스 양 조정
		itemBuilder: 불러올 아이템들에 대한 빌더(불러올 내용 정하기)
		
	listview.separated 사용하기
		separatorBuilder: 인덱스 사이의 구분자 생성
	
	**크롬, 안드로이드 애뮬레이터로 돌릴 시 수평 스크롤은 Shift + 마우스 휠로 조작해야됨;
	
위젯의 움직임을 표현하고 싶을때 Hero 위젯 사용 -> 사용할 두 위젯을 모두 Hero 위젯으로 감싸고 같은 tag를 제공해줌

GestureDetector
	이름 그대로 모든 제스처 활동을 감지해 그에 해당하는 명령을 할당할 수 있는 위젯으로
	on click = ontap = ontapdown + ontapup;
	
Navigator >> Route (전자가 더 큰 개념 // Navigator -> Route관리자)
	플러터의 화면이동은 기존 화면 위에 새로운 화면을 계속해서 덧씌우는 식으로 이동하는것 같음 그래서 새로운 페이지로 이동할 때는 새로운 빌더를 통해 화면을 다시 생성하고 움직임, 대신 직전 단계의 화면으로의 이동은 앞에 있는 창만 닫으면 바로 이루어짐
	장점?: 플로팅 및 다양한 화면전환에서 부드럽게 전환 가능하다
 	단점?: 화면위에 스택을 계속 쌓다보니 잦은 화면전환이 필요한 앱에서는 과부화 걸릴 수 있겠다?
 
	1. push(context, MaterialPageRoute): 다른 페이지로 이동
 	2. pop(context): 이전 페이지로 이동
	3. popUntil: 최초 라우트로 이동 후 이전에 생성했던 모든 위젯 종료


내부 저장소 접근 - https://pub.dev/packages/shared_preferences 패키지 사용
	
