import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/mode/FirstPageItem.dart';
import 'package:fultterapp/common/s/net/NetUtils.dart';
import 'package:fultterapp/page/page/channelPage/ListViewItem.dart';
import 'package:fultterapp/page/pagination.dart';

import 'package:fultterapp/common/s/utils/ListRefresh.dart' as ListComp;

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new MinePageState();
  }
}

class MinePageState extends State<MinePage> {
  List<int> indexs = List.generate(50, (index) {
    return index;
  });

  Future<Map> getIndexListData([Map<String, dynamic> params]) async {
    const juejin_flutter =
        'https://timeline-merger-ms.juejin.im/v1/get_tag_entry?src=web&tagId=5a96291f6fb9a0535b535438';
    var pageIndex = (params is Map) ? params['pageIndex'] : 0;
    final _param = {'page': pageIndex, 'pageSize': 2, 'sort': 'rankIndex'};

    var responseList = [];
    var pageTotal = 0;

    try {
      var response = await NetUtils.get(juejin_flutter, params: _param);
      responseList = response['d']['entrylist'];
      pageTotal = response['d']['total'];
      if (!(pageTotal is int) || pageTotal <= 0) {
        pageTotal = 0;
      }
    } catch (e) {}
    pageIndex += 1;
    List resultList = new List();
    for (int i = 0; i < responseList.length; i++) {
      try {
        FirstPageItem cellData = new FirstPageItem.fromJson(responseList[i]);
        resultList.add(cellData);
      } catch (e) {
        // No specified type, handles all
      }
    }
    Map<String, dynamic> result = {
      "list": resultList,
      'total': pageTotal,
      'pageIndex': pageIndex
    };
    return result;
  }

  Widget makeCard(index, item) {
    var myTitle = '${item.title}';
    var myUsername = '${'👲'}: ${item.username} ';
    var codeUrl = '${item.detailUrl}';
    return new ListviewItem(
      itemUrl: codeUrl,
      itemTitle: myTitle,
      data: myUsername,
    );
  }

  headerView() {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[Pagination()],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Pagination(),
          ],
        ),
        new Expanded(
            child:
                ListComp.ListRefresh(getIndexListData(), makeCard, headerView))
      ],
    );
  }
}
