import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100억 벌어 룸싸롱 가자',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EazyFast Alarm'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.alarm,
              size: 36.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('4.2 화면 배치를 위한 위젯'),
            onTap: () {
              return null;
            },
          ),
          ListTile(
            title: Text('4.3 위치, 정렬, 크기를 위한 위젯'),
            onTap: () {
            },
          ),
        ],
      ),

    );
  }
}


