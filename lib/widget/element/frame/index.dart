import 'package:flutter/material.dart';
import 'package:fultterapp/common/s/weight/style/AlignAlignment.dart';

const String _flatText0 = """
     **简介**
   Align控件即时对齐控件，能将子空间所指定方式对齐,并根据子控件的大小调整自己的大小
   根据仔细需求，进行控件对齐
     **基本用法**
   alignment -> AlignmentGeometry
   要对齐下方的框,那么对这个框要求会比对子控件更加严肃的 使用aligin.BootomRight
   同理 Alignment.center, Alignment.bootomLeft,Alignment.leftTop
 
""";

const String _flatText1 = """
    widthFactor / heightFactor - double
    如果widthFactor / heightFactor 为空,并且外部无任何约束，child控件大小默认，那么这个控件将根据自身尺寸最大化
    如果widthFactor / heightFactor 不为空，那么外部无约束，algin将匹配对应的child的尺寸
    ex：widthFactor / heightFactor 为2.0 那么widget的宽高为child宽高的两倍。
    如果widthFactor / heightFactor 为空 那么外部无约束，child控件将为设置为自身大小
""";

class frameState extends StatelessWidget {
  static final String sName = '/frameState';

  static final String routeName = '/frameState';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FrameWidget();
  }
}

class FrameWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FrameState();
  }
}

class FrameState extends State<FrameWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Scaffold(
        body: new ListView(
          children: <Widget>[
            new Container(
              child: new Column(
                children: <Widget>[
                  new Text(_flatText0),
                  Row(
                    //分割
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AlignAlignment(Alignment.centerLeft, 'centerLeft'),
                      AlignAlignment(Alignment.center, 'center'),
                      AlignAlignment(Alignment.centerRight, 'centerRight'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AlignAlignment(Alignment.topLeft, 'topleft'),
                      AlignAlignment(Alignment.topCenter, 'tocenter'),
                      AlignAlignment(Alignment.topRight, 'topRight')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      AlignAlignment(Alignment.bottomLeft, 'boleft'),
                      AlignAlignment(Alignment.bottomCenter, 'bocenter'),
                      AlignAlignment(Alignment.bottomRight, 'boRight')
                    ],
                  ),
                  new Text(_flatText1),
                  Column(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        height: 50,
                        color: Colors.blue,
                        child: Align(
                          alignment: Alignment.center,
                          child: new Text(
                            'Align',
                            style: new TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(
                            left: 50, right: 50, top: 10, bottom: 10),
                        color: Colors.red,
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 10),
                              alignment: Alignment.topLeft,
                              child: new Image.asset(
                                'images/home.png',
                                height: 20,
                                width: 20,
                                fit: BoxFit.fill,
                              ),
                            ),
                            new Container(
                              alignment: Alignment.center,
                              color: Colors.blue,
                              width: 30,
                              height: 80,
                              child: new Text('2'),
                            ),
                            new Container(
                              color: Colors.red,
                              child: new Align(
                                alignment: Alignment.center,
                                widthFactor: null,
                                heightFactor: null,
                                child: Container(
                                  alignment: Alignment.center,
                                  color: Colors.white,
                                  child: new Text(
                                    '123',
                                    style: new TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          color: Colors.pink,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _AlignCreate() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AlignAlignment(Alignment.center, 'center'),
          ],
        ),
      ],
    );
  }
}
