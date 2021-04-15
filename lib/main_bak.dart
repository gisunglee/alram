import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'vo/story.dart';
import 'package:alram/view/daybar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100억 벌어 야호 하자',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TimeOfDay _time = new TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('EazyFast Alarm'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              final TimeOfDay picked =
                  await showTimePicker(context: context, initialTime: _time);
              print(picked.minute);
              print(picked.hour);
            },
            icon: Icon(
              Icons.alarm,
              size: 36.0,
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Image.network(
                      "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/315473.jpg"),
                  ListTile(
                    title: Text('4.2 화면 배치를 위한 위젯'),
                    onTap: () {
                      return null;
                    },
                  ),
                  Daybar(),
                  _timeList(size),
                  Image.network(
                      "https://miro.medium.com/max/451/1*mHMr5eihoBMY4NfP-CY2EA.png"),
                  ListTile(
                    title: Text('4.2 화면 배치를 위한 위젯'),
                    onTap: () {
                      return null;
                    },
                  ),
                  Image.network(
                      "https://flutter.dev/assets/ui/layout/row-expanded-2-visual-7003ec3a27b38a2cc925b97abfd933fe6d2fce62494400e0e3c9790b715cd0d1.png"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7y5ptcpN071_b_7L4_VVJuh9oDri0m03DhQ&usqp=CAU"),
                  ButtonBar(
                    buttonMinWidth: 100,
                    buttonTextTheme: ButtonTextTheme.primary,
                    buttonHeight: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _timeList(Size size) {

    List<String> red = ["sdf", "sf"];
    final redList = red.map((e) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      elevation: 16,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 12.0, right: 12, top: 12, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 8,
            ),
          ],
        ),
      ),
    ));


    return Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 12.0, right: 12, top: 12, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12, top: 12, bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
