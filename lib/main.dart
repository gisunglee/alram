import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'story.dart';

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
  TimeOfDay _time = new TimeOfDay.now();

  List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "월"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "화"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "수"),
    Story(
        "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "목"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "금"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "토"),
    Story(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "일")
  ];

  @override
  Widget build(BuildContext context) {
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(
                      vertical: 0,
                    ),
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: _stories.map((story) {
                        return Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 3.8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  width: 3,
                                  color: Color(Colors.yellow.value),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(
                                  2,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  //child: Text(story.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                  child: Image(
                                    image: NetworkImage(story.image),
                                    width: 41,
                                    height: 41,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(story.name),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
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
}
