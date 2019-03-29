import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/mode/FirstPageItem.dart';
import 'package:fultterapp/common/s/net/NetUtils.dart';
import 'package:fultterapp/common/s/weight/style/string_resource/StringResource.dart';
import 'package:fultterapp/page/page/channelPage/ListViewItem.dart';
import 'package:fultterapp/page/pagination.dart';
import 'package:fultterapp/common/s/utils/ListRefresh.dart' as ListComp;

//import 'package:flutter_go/components/list_view_item.dart';
//class ChannelPages extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ListView(
//      scrollDirection: Axis.vertical,
//      itemExtent: 60,
//      children: List.generate(100, (index) {
//        return new Container(
//          alignment: Alignment.center,
//          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//          child: Text("item${index}"),
//        );
//      }),
//    );
//  }
//}

class ChannelPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ChannelPageStateFul();
  }
}

class ChannelPageStateFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChannelPageState();
  }
}

class ChannelPageState extends State<ChannelPageStateFul>
    with SingleTickerProviderStateMixin {
  final List<Tab> channelTabs = <Tab>[
    Tab(
      text: StringResource.channel_tab_recommendation,
    ),
    Tab(
      text: StringResource.channel_tab_lab_screen,
    )
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: channelTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: channelTabs,
          controller: _tabController,
        ),
      ),

      body: TabBarView(
          children: channelTabs.map((Tab tab){
            return Center(child: Text(tab.text),);
          }).toList(),
      ),
    );
  }
}
