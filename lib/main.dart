import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

const purple = Color(0xffaf57dc);
const blue = Color(0xff7b78e2);

// const Map<int, Color> colorPurple = {
//   50: Color.fromRGBO(56, 41, 87, .1),
//   100: Color.fromRGBO(56, 41, 87, .2),
//   200: Color.fromRGBO(56, 41, 87, .3),
//   300: Color.fromRGBO(56, 41, 87, .4),
//   400: Color.fromRGBO(56, 41, 87, .5),
//   500: Color.fromRGBO(56, 41, 87, .6),
//   600: Color.fromRGBO(56, 41, 87, .7),
//   700: Color.fromRGBO(56, 41, 87, .8),
//   800: Color.fromRGBO(56, 41, 87, .9),
//   900: Color.fromRGBO(56, 41, 87, 1),
// };

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      title: 'dUNC',
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(  // 為了避開螢幕的最上方
            height: 50,
          ),
          
          NeumorphicToggle(  // 「找球隊/球員、找比賽」
            children: [
              ToggleElement(
                foreground: Center(child: NeumorphicText(
                  '找球隊/球員',
                  style: const NeumorphicStyle(color: Colors.white),
                ),),
                background: Center(child: NeumorphicText(
                  '找球隊/球員',
                  style: const NeumorphicStyle(color: Colors.black),
                ),),
              ),
              ToggleElement(
                foreground: Center(child: NeumorphicText(
                  '找比賽',
                  style: const NeumorphicStyle(color: Colors.white),
                ),),
                background: Center(child: NeumorphicText(
                  '找比賽',
                  style: const NeumorphicStyle(color: Colors.black),
                ),)
              )
            ],

            thumb: Container(  // 已被選擇的項目的樣式
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [blue, purple]
                ),
              )
            ),

            style: const NeumorphicToggleStyle(
              backgroundColor: Colors.white54,  // 沒被選擇的項目背景顏色
              lightSource: LightSource(0.6, 0.6),
              borderRadius: BorderRadius.all(Radius.circular(20))  // 選中項目
            ),
          )
        ],
      ),
    );
  }
}
