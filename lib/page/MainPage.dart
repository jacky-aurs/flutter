import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/weight/style/string_resource/StringResource.dart';
import 'package:fultterapp/page/page/channelPage/ChannelPages.dart';
import 'package:fultterapp/page/HomePage.dart';
import 'package:fultterapp/page/FindPage.dart';
import 'package:fultterapp/page/MInePage.dart';

class MainPage extends StatelessWidget {
  //单击提示推出
  Future<bool> _dialogExitApp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
              content: new Text(StringResource.app_back_tip),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MainPageWidget(),
      theme: new ThemeData(
          primaryColor: Colors.black, backgroundColor: Colors.black),
    );
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

//  class Homes extends State<MainPage> with SingleTickerProviderStateMixin{
//    final PageController _pageController = new PageController(initialPage: 0);
//    int _tabIndex=0;
//    _onPageChange(int index){
//      setState(() {
//        _tabIndex = index;
//      });
//
//    }
//
//    Image _getBarIcon(int index, bool isActive){
//
//      if(index == 0){
//        return _getAssetIcon(isActive ? 'images/home_s.png' : 'images/home.png');
//      }else if(index == 1){
//        return _getAssetIcon(isActive ? 'images/channel_s.png' : 'images/channel.png');
//      }else if(index ==2){
//        return _getAssetIcon(isActive ? 'images/find_s.png' : 'images/find.png');
//      }else if(index == 3){
//        return _getAssetIcon(isActive ? 'images/mine_s.png' : 'images/mine.png');
//      }
//
//
////      switch(index){
////
////        case 0:return _getAssetIcon(isActive ? 'images/home_s.png' : 'images/home.png');
////
////        case 1:return _getAssetIcon(isActive ? 'images/channel_s.png' : 'images/channel.png');
////
////        case 2:return _getAssetIcon(isActive ? 'images/find_s.png' : 'images/find.png');
////
////        case 3:return _getAssetIcon(isActive ? 'images/mine_s.png' : 'images/mine.png');
////
////      }
//
//    }
//
//    Image _getAssetIcon(String path){
//      return Image.asset(path,width: 24.0,height: 24.0,);
//
//    }
//
//
//    Text _getBarText(int index){
//
//      if(index == 0){
//        return Text("首页",style: TextStyle(color: Colors.black87),);
//      }else if(index == 1){
//        return Text("频道",style: TextStyle(color: Colors.black87),);
//      }else if(index == 2){
//        return Text("消息",style: TextStyle(color: Colors.black87),);
//      }else if(index == 3){
//        return Text("我的",style: TextStyle(color: Colors.black87),);
//      }
//
//
//
////      switch(index){
////
////        case 0:return Text("首页",style: TextStyle(color: Colors.black87),);
////
////        case 1:return Text("频道",style: TextStyle(color: Colors.black87),);
////
////        case 2:return Text("消息",style: TextStyle(color: Colors.black87),);
////
////        case 3:return Text("我的",style: TextStyle(color: Colors.black87),);
////      }
//    }
//
//
//      @override
//    Widget build(BuildContext context) {
//    return new MaterialApp(
//      theme: ThemeData(
//        canvasColor: Color(0xffEEEFF2)
//      ),
//      home: new Scaffold(
//       body: PageView.builder(
//          itemBuilder: (BuildContext context,int index){
//
//            if(index == 0){
//              return new Homepage();
//            }else if(index == 1){
//              return new ChannelPages();
//            }else if(index == 2){
//              return new FindPage();
//            }else if(index == 3){
//              return new MinePage();
//            }
//
////            switch(index){
////
////              case 0: return new Homepage();
////
////              case 1: return new ChannelPages();
////
////              case 2: return new FindPage();
////
////              case 3: return new MinePage();
////            }
//          },
//          itemCount: 4,
//          onPageChanged: _onPageChange,
//          controller: _pageController,
//
//        ),
//
//        bottomNavigationBar: new BottomNavigationBar(
//          fixedColor: Colors.black87,
//          type: BottomNavigationBarType.fixed,
//          iconSize: 24,
//          items: <BottomNavigationBarItem>[
//            new BottomNavigationBarItem(
//                icon: _getBarIcon(0, false),
//                title: _getBarText(0),
//                activeIcon: _getBarIcon(0, true),
//                backgroundColor: Color(0xffEAEAEA)
//
//            ),
//            new BottomNavigationBarItem(
//                icon: _getBarIcon(1, false),
//                title: _getBarText(1),
//                activeIcon: _getBarIcon(1, true),
//                backgroundColor: Color(0xffEAEAEA)
//
//            ),
//            new BottomNavigationBarItem(
//                icon: _getBarIcon(2, false),
//                title: _getBarText(2),
//                activeIcon: _getBarIcon(2, true),
//                backgroundColor: Color(0xffEAEAEA)
//
//            ),
//            new BottomNavigationBarItem(
//                icon: _getBarIcon(3,false),
//                title: _getBarText(3),
//                activeIcon: _getBarIcon(3, true),
//                backgroundColor: Color(0xffEAEAEA)
//            ),
//          ],
//
//          currentIndex: _tabIndex,
//          onTap: (index){
//            _pageController.jumpToPage(index);
//            _onPageChange(index);
//          },
//        ),
//      ),
//
//    );
//   }
//  }

//  class Homes extends State<MainPageWidget>{
//    int _curIndex=0;
//    //存放fragment
//    final List<Widget> _children=[new Homepage(),new ChannelPages(),new FindPage(),new MinePage()];
//
//    final List<BottomNavigationBarItem> _lsit=<BottomNavigationBarItem>[
//      BottomNavigationBarItem(
//        icon: getTabImagePath('images/home.png'),
//        title: new Text('首页')
//      ),
//
//      BottomNavigationBarItem(
//        icon:  getTabImagePath('images/channel.png'),
//        title: new Text('频道')
//
//      ),
//
//      BottomNavigationBarItem(
//          icon:  getTabImagePath('images/find.png'),
//          title: new Text('发现')
//
//      ),
//
//      BottomNavigationBarItem(
//          icon:  getTabImagePath('images/mine.png'),
//          title: new Text('我的')
//
//      ),
//
//
//    ];
//
//    static  Image getTabImagePath(var path){
//      return new Image.asset(path,width: 24.0,height: 24.0,);
//    }
//
//    @override
//    Widget build(BuildContext context) {
//      // TODO: implement build
//
//      return new Scaffold(
//        backgroundColor: Colors.white,
//
////        appBar: AppBar(
////          title: Text('Bootom Navigation'),
////        ),
//
//        bottomNavigationBar: BottomNavigationBar(
//          items: _lsit,
//          type: BottomNavigationBarType.fixed,
//          onTap: onTabTapped,
//          currentIndex: _curIndex,
//        ),
//
//        body: _children[_curIndex],
//      );
//    }
//
//  void onTabTapped(int index) {
//      setState(() {
//        _curIndex=index;
//      });
//
//  }
//}
//
class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '频道', '发现', '我的'];

  /*
   * 存放三个页面，跟fragmentList一样
   */
  var _pageList;

  /*
   * 根据选择获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xffbca93e)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(fontSize: 14.0, color: const Color(0xff515151)));
    }
  }

  /*
   * 根据image路径获取图片
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 24.0, height: 24.0);
  }

  void initData() {
    /*
     * 初始化选中和未选中的icon
     */
    tabImages = [
      [getTabImage('images/home.png'), getTabImage('images/home_s.png')],
      [getTabImage('images/channel.png'), getTabImage('images/channel_s.png')],
      [getTabImage('images/find.png'), getTabImage('images/find_s.png')],
      [getTabImage('images/mine.png'), getTabImage('images/mine_s.png')]
    ];

    /*
     * 四个子界面
     */
    _pageList = [
      new Homepage(),
      new ChannelPages(),
      new FindPage(),
      new MinePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    // TODO: implement build
    return Scaffold(
        body: _pageList[_tabIndex],
        backgroundColor: Color(0xff000000),
        bottomNavigationBar: new BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0),
                title: getTabTitle(0),
                backgroundColor: Color(0x7d7884)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1),
                title: getTabTitle(1),
                backgroundColor: Color(0x7d7884)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2),
                title: getTabTitle(2),
                backgroundColor: Color(0x7d7884)),
            new BottomNavigationBarItem(
                icon: getTabIcon(3),
                title: getTabTitle(3),
                backgroundColor: Color(0x7d7884)),
          ],

          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black87,
          //默认选中首页
          currentIndex: _tabIndex,
          iconSize: 24.0,
          //点击事件
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ));
  }
}
