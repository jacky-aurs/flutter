import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/utils/ListRefresh.dart' as ListComp;
import 'package:fultterapp/page/pagination.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Homepage> {
  List<Container> _buildGridTitleList(int count) {
    return new List<Container>.generate(
      count,
      (int index) => new Container(
            child: new Image.asset('images/home.png'),
          ),
    );
  }

  Widget buildGrid() {
    return Column(
      children: <Widget>[
        new GridView.count(
          crossAxisCount: 4,
          padding: const EdgeInsets.all(2.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _buildGridTitleList(8),
        ),
      ],
    );
  }


  headerView() {
    return Column(
      children: <Widget>[
        Pagination(),
        Positioned(
          top: 10,
          left: 0.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
//      backgroundColor: Color(0xFF000000),
      appBar: new AppBar(
        title: new Text('首页'),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          headerView(),
          buildGrid()
        ],

      ),

    );
  }
}
