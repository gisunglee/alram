import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,

        children: _timeList(context),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

  List<Card> _timeList(BuildContext context) {

    List<String> red = ["sdf", "sf"];

    return red.map((e) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        elevation: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.network(
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcS2cS94hBtJkxYQy0H8bgLUcMUWK4xglbvYrIHJocaf2xqxLv8wrCgB9U4xksu6ZprrprjPZEx8wDQ&usqp=CAc',
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text( "name", maxLines: 1, ),
                    SizedBox(height: 8.0),
                    Text( "f", ),
                  ],
                ),
              ),
            ),
          ]
        ),
      );
    }).toList();
  }

// final redList = red.map((e) => Card(
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
//   elevation: 16,
//   child: Padding(
//     padding: const EdgeInsets.only(
//         left: 12.0, right: 12, top: 12, bottom: 32),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           height: 8,
//         ),
//       ],
//     ),
//   ),
// ));

