import 'package:flutter/material.dart';

class Recommend extends StatefulWidget {
  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RECOMMEND"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 86, 134, 202),
      ),
      body: Column(
        children: <Widget>[
          _pageOfTop(),
          _pageOfMiddle(),
          _pageOfBottom(),
        ],
      ),
    );
  }
}

Widget _pageOfTop() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          '위치별 추천',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.time_to_leave,
                  color: Color.fromARGB(255, 125, 179, 255),
                  size: 30,
                ),
                Text('자동차'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.directions_bus,
                  color: Color.fromARGB(255, 125, 179, 255),
                  size: 30,
                ),
                Text('버스'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.directions_subway,
                  color: Color.fromARGB(255, 125, 179, 255),
                  size: 30,
                ),
                Text('지하철'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.transfer_within_a_station,
                  color: Color.fromARGB(255, 125, 179, 255),
                  size: 30,
                ),
                Text('환승 안내'),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              var num = index + 1;
              return ListTile(
                leading: Icon(Icons.place),
                title: Text('$num 번째 ListTile'),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget _pageOfMiddle() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          '관심사별 추천',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.airplanemode_active,
                  color: Color.fromARGB(255, 86, 134, 202),
                  size: 30,
                ),
                Text('비행 정보'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 86, 134, 202),
                  size: 30,
                ),
                Text('마트'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.wb_sunny,
                  color: Color.fromARGB(255, 86, 134, 202),
                  size: 30,
                ),
                Text('날씨'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_hospital,
                  color: Color.fromARGB(255, 86, 134, 202),
                  size: 30,
                ),
                Text('병원'),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              var num = index + 1;
              return ListTile(
                leading: Icon(Icons.tag_faces),
                title: Text('$num 번째 ListTile'),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget _pageOfBottom() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          '오늘의 추천',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.record_voice_over,
                  color: Color.fromARGB(255, 26, 84, 173),
                  size: 30,
                ),
                Text('강연'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_cafe,
                  color: Color.fromARGB(255, 26, 84, 173),
                  size: 30,
                ),
                Text('카페'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.wallpaper,
                  color: Color.fromARGB(255, 26, 84, 173),
                  size: 30,
                ),
                Text('미술관'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.restaurant,
                  color: Color.fromARGB(255, 26, 84, 173),
                  size: 30,
                ),
                Text('음식점 대기'),
              ],
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              var num = index + 1;
              return ListTile(
                leading: Icon(Icons.thumb_up),
                title: Text('$num 번째 ListTile'),
              );
            },
          ),
        ),
      ],
    ),
  );
}