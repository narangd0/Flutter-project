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
      home: const MyHomePage(title: '조선대학교'),
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
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: ListView(
          children: [
            Image.asset(
              width: double.infinity,
              height: 400,
              'assets/chosun.png',
              fit: BoxFit.fill,
            ),
            ListTile(
              title: Text(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  '조선대학교 본관'),
              subtitle: Text('주소'),
              trailing: TextButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  label: Text("41")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      Text("전화")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.map,
                        color: Colors.blue,
                      ),
                      Text("길찾기")
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Text("공유")
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  style: TextStyle(fontSize: 18),
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
            )
          ],
        ));
  }
}

// 3개, 위젯 그리기, 저번주 이번주에 배웠던 거, 비슷하게 그리면 됨
// 조선대 예제에서 사용된 위젯 위주로. 조선대 예제처럼 나옴

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
