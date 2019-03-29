import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/weight/style/font/ColorsResours.dart';
import 'package:fultterapp/common/s/weight/style/string_resource/StringResource.dart';


class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MinepageWidget();
  }
}

class MinepageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MineWidget();
  }
}

class MineWidget extends State<MinepageWidget>
    with SingleTickerProviderStateMixin {
  final List<Tab> channelTabs = <Tab>[
    Tab(
      text: StringResource.channel_tab_recommendation,
    ), //推荐
    Tab(
      text: StringResource.channel_tab_lab_screen,
    ) //标签筛选
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: channelTabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: channelTabs,
          controller: _tabController,
          labelColor: Color(ColorsResours.channel_tab_text_color),
          unselectedLabelColor: Color(ColorsResours.channel_tab_text_color),
          labelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,

          ),
        ),
      ),
      body: TabBarView(
        children: channelTabs.map((Tab tab) {
          return Center(child: Text(tab.text));
        }).toList(),
        controller: _tabController,
      ),
    );

//    return SizedBox(
//      height: 50,
//      child: new Scaffold(
//        backgroundColor: Colors.blue,
////        appBar: AppBar(
////          title: TitleBar(),
////        ),
//        body: new Row(
//          children: <Widget>[
//            new Container(
//              height: 50,
//              decoration: new BoxDecoration(color: Colors.black),
//              padding: const EdgeInsets.symmetric(horizontal: 10),
//              child: new Row(
//                //row 相当于水平布局
//
//                children: <Widget>[
//                  new IconButton(
//                      icon: new Icon(Icons.arrow_back_ios),
//                      color: Colors.black,
//                      onPressed: () {
//                        Navigator.of(context).canPop();
//                      }),
//                  new Expanded(child: new Text('个人中心')),
//                  new IconButton(
//                      icon: new Image.asset('images/home.png'),
//                      onPressed: () {
//                        Navigator.canPop(context);
//                      })
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    );
  }
}
