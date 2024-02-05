import 'package:flutter/material.dart';
import 'package:pj2/screens/home_screen.dart';

//stateless -- using build method >> just print on UI
//stateful -- save & watch immedieatly changes(HAVE DATA)

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
//setstate(){} -- 데이터 변경을 알리고 UI새로고침을 요청하는 함수 / 안쪽에 코드를 작성하는것이 좋음
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

/*dispose() -- 위젯을 UI상에서 지워낼때 bool속성을 통해 잠시 위젯을 내려둘 수 있음 */
/*initState() -- 초기화할때 사용가능하지만 안써도 됨. 단, 부모의 인자를 받아와 초기화 해야 되는 경우에는 반드시 써야 됨*/