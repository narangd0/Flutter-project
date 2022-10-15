import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '앱 상단 텍스트 변경'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  final List<Widget> _widgets = [
    Text('Home'),
    Text('Index 1'),
    Placeholder(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: 'Noti'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MyPage')
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: _widgets.elementAt(_selectedIndex),
        ));
  }
}

/*
Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title:  const Center(child: Text("앱바 타이틀")),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.tag_faces),
                ),
                Tab(
                  text: "2번",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: '즐겨찾기',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.deepOrangeAccent,
              ),
              Container(
                color: Colors.amber,
              )
            ],
          )),
    );
 */

//Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 // alt + Enter로 Wrap 해주어 중앙 정렬
//                 // Center Widget을 삭제할 때도 alt + Enter
//                 // 이후 Column이나 Row로 wrap할 때도 alt + Enter
//                 children: <Widget>[
//                   Container(
//                     color: Colors.red,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.blueAccent,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                 ]),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//                 // alt + Enter로 Wrap 해주어 중앙 정렬
//                 // Center Widget을 삭제할 때도 alt + Enter
//                 // 이후 Column이나 Row로 wrap할 때도 alt + Enter
//                 children: <Widget>[
//                   Container(
//                     color: Colors.red,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.blueAccent,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                 ]),
//             Row(mainAxisAlignment: MainAxisAlignment.end,
//                 // alt + Enter로 Wrap 해주어 중앙 정렬
//                 // Center Widget을 삭제할 때도 alt + Enter
//                 // 이후 Column이나 Row로 wrap할 때도 alt + Enter
//                 children: <Widget>[
//                   Container(
//                     color: Colors.red,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                   Container(
//                     color: Colors.blueAccent,
//                     width: 100,
//                     height: 100,
//                     padding: const EdgeInsets.all(8.0),
//                     margin: const EdgeInsets.all(16.0),
//                   ),
//                 ]),
//           ],
//         )
