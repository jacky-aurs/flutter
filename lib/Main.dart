import 'package:flutter/material.dart';
import 'package:fultterapp/page/MainPage.dart';
//void main() => runApp(Main());

class Main extends StatelessWidget {

  static final String sName='/Main';


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


//    return new MaterialApp(
//      title: 'yangshi',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue
//      ),
//    );

    //定义全局样式
    final _buttonThemeData=new ThemeData(primaryColor: Colors.blue);
    //实现按钮行
//    buildButtonColumn 创建一个包含 icon跟text文本的列
    Column buildButtonColumn(IconData icon,String lable){

    Color color=Theme.of(context).primaryColor;

    //chuangjian
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        new Icon(icon,color: color,),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            lable,
            style: new TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: color
            ),
          ),
        ),

      ],

    );
    }


    Widget buttionSection=new Container(
      child: new Row(
        //横向分割类似  安卓的给权重
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'call'),
          buildButtonColumn(Icons.near_me, 'route'),
          buildButtonColumn(Icons.share, 'share')

        ],

      ),
    );


    //文本部分

    Widget textSection=new Container(
      padding: const EdgeInsets.all(32.0),

      child: new Text('2131231231231231231221312321'),

    );



    //使用max设置横向跟垂直方向的布局显示
    
    Widget userRow =new Container(
      padding: const EdgeInsets.all( 10.0),
      //flex设置成221会使布局平均分开
      child: new Row(
        //main 方法是用于长度
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //flex权重
          new Expanded(
              child: new Text('123123123'),
              flex: 2,
          ),
          new Expanded(
              child: new Text('123123123'),
              flex: 2,
          ),
          new Expanded(
              child: new Text('123123123'),
              flex: 1,
          )
        ],
      ),

    );

    Widget useStar =new Container(
      padding: const EdgeInsets.only(left: 20.0),

      child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: <Widget>[

              new Icon(
                Icons.star,color: Colors.green[500],
              ),
              new Icon(
                Icons.star,color: Colors.green[500],
              ),
              new Icon(
                Icons.star,color: Colors.green[500],
              ),
              new Icon(
                Icons.star,color: Colors.black,
              ),
              new Icon(
                Icons.star,color: Colors.black,
              ),
            ],
          ),

          new Text(
              '我是横向的那个文字',
            style: new TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              fontFamily: 'Rotobo',
              letterSpacing: 0.5
            ),
          ),
        ],

     ),

    );







    //标题栏
    Widget titleSection=new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0
                ),
                child: new Text('Oechined Lake Campground ',
                  style: TextStyle(fontWeight: FontWeight.bold
                  ),
                ),
              ),
              new Text('Oechined Lake ',
                style: new TextStyle(
                    color: Colors.grey[500]
                ),
              ),
            ],
          ),
         ),

          new Icon(
              Icons.star,
              color: Colors.red[500],
          ),
          new Text('41')
        ],
      ),
    );


    //实现按钮行

//    return new MaterialApp(
//    title: 'Welcome to Flutter',
//    home: new Scaffold(
//    appBar: new AppBar(
//      title: new Text('Welcome to Flutter'),
//    ),
//
//    body: new ListView(
//      children: <Widget>[
////        new Image.asset('ic_launcher.png',
////          width: 600,
////          height: 240,
////          fit: BoxFit.cover,
////        ),
//        titleSection,
//        buttionSection,
//        textSection,
//        userRow,
//        useStar,
////        useColumn,
//      ],
//    )
//    ),
//   );

      return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.blue
        ),
        //导包
        home: MainPage(),

      );



  }
}



