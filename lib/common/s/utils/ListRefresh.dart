import 'package:flutter/material.dart';

/**
 *
 *
 * 封装上啦加载
 * 下啦刷新
 *
 */
class ListRefresh extends StatefulWidget {
  final renderItem;
  final requestApi;
  final headerView;

//  , this.headerView

  const ListRefresh(this.renderItem, this.requestApi, this.headerView)
      : super();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListRefreshState();
  }
}

class _ListRefreshState extends State<ListRefresh> {
  bool isLoading = false; //是否正在请求数据
  bool _hasMore = true; //是否还有更多数据
  int _pageindex = 0; //页面索引
  int _pageTotal = 0; //
  List items = new List();
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController.addListener(() {
      //如果下啦的当前位置到scroll到最下面
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  //listview探底   执行的具体事件
  Future _getMoreData() async {
    if (!isLoading && _hasMore) {
      if (mounted) {
        setState(() {
          isLoading = true;
        });
      }
      //如果listview还有数据    下啦加载更多数据

      List newEntries = await mokeHttpRequest();

      _hasMore = (_pageindex <= _pageTotal);
      if (this.mounted) {
        setState(() {
          items.addAll(newEntries);
          isLoading = false;
        });
      }
    } else if (!isLoading && !_hasMore) {
      _pageindex = 0;
      backElasticEffect();
    }
  }

  //回弹效果
  backElasticEffect() {
    double edge = 50.0;
    double offsetFromBottom = _scrollController.position.maxScrollExtent -
        _scrollController.position.pixels;
    if (offsetFromBottom < edge) {
      // 添加一个动画没有更多数据的时候 ListView 向下移动覆盖正在加载更多数据的标志
      _scrollController.animateTo(
          _scrollController.offset - (edge - offsetFromBottom),
          duration: new Duration(milliseconds: 1000),
          curve: Curves.easeOut);
    }
  }

  //伪装吐出新数据
  Future<List> mokeHttpRequest() async {
    if (widget.requestApi is Function) {
      final listObj = await widget.requestApi({'pageIndex': _pageindex});
      _pageindex = listObj['pageIndex'];
      _pageTotal = listObj['totle'];
      return listObj['list'];
    } else {
      return Future.delayed(Duration(seconds: 2), () {
        return [];
      });
    }
  }

  //下啦加载的事件  清空之前的lsit内容  取前x个
  Future<Null> _handleRefresh() async {
    List newEntries = await mokeHttpRequest();
    if (this.mounted) {
      setState(() {
        items.clear();
        items.addAll(newEntries);
        isLoading = false;
        _hasMore = true;
        return null;
      });
    }
  }

  //加载中的提示
  Widget _buildLoadText() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: new Text('数据没有更多了 ！！！'),
        ),
      ),
    );
  }

  //上啦加载loading的Widget，如果数据没有达到极限，显示没有更多
  Widget _buildProgressIndicator() {
    if (_hasMore) {
      return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              new Opacity(
                opacity: isLoading ? 1.0 : 1.0,
                child: new CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              new Text(
                '稍等片刻更精彩...',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      );
    } else {
      return _buildLoadText();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0 && index != items.length) {
              if (widget.headerView is Function) {
                return widget.headerView();
              } else {
                new Container(
                  height: 0,
                );
              }
            }

            if (index == items.length) {
              return _buildProgressIndicator();
            } else {
              if (widget.renderItem is Function) {
                return widget.renderItem(index, items[index]);
              }
            }
          },
          controller: _scrollController,
        ),
        onRefresh: _handleRefresh);
  }
}
