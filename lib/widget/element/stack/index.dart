import 'package:flutter/material.dart';

const String _stackText0 = """### **简介**
> 用于将多个childs相对于其框的边缘定位，多用于以简单方式重叠children
- 当第一个child置于底部时，堆栈按顺序绘制其子项。如果更改子项绘制顺序，可以使用新顺序重新建立堆栈
- 注意：stack的每一个子节点都已定位或未定位，定位子项必须至少一个非null属性的定位。

""";
const String _stackText1 = """### **基本用法**
> 1.alignment → AlignmentGeometry
- 对齐方式，默认是右上角,详情请点击Layout-row页面，类似
- 多个positioned叠加图层，Alignment.center事例
""";
const String _stackText2 = """### 
> fit → StackFit
- loose:放开了子节点宽高的约束，可以让子节点从0到最大尺寸
- expand: 子节点最大可能的占用空间，允许最大大小
- passthrough：不改变子节点约束

>textDirection → TextDirection
- 文本方向

> overflow → Overflow
- 超过的部分是否裁剪掉
- overflow: Overflow.clip/visible
""";

class StackState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StackStates();
  }
}

class StackStates extends State<StackState> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('213123'),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                child: new Container(
                  child: new Text(
                    _stackText0,
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
              Container(
                child: new Container(
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 50, right: 50),
                  width: 300,
                  height: 330,
                  color: Colors.red,
                  //设置显示字体的位置
                  alignment: Alignment.topLeft,

                  //设置显示文字的的位置   Alignment.topLeft  左上角

                  child: new Column(
                    children: <Widget>[
                      Stack(
                        fit: StackFit.loose,
                        overflow: Overflow.clip,
                        textDirection: TextDirection.ltr,
//                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Text(
                            'Stack Demo',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 5.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Stack(
                        fit: StackFit.expand,
                        overflow: Overflow.clip,
                        textDirection: TextDirection.rtl,
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          //加载网络图片
                          new Image.network(
                            'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true',
                            width: 500,
                            height: 300,
                          )

                          //加载网络图片  渐入浅出

                          //使用缓存图片
//                           FadeInImage.memoryNetwork(
//                              placeholder: null,
//                              image: 'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true')
                          /**
                           * 加载网络图
                           */
//                          FadeInImage.memoryNetwork(
//                              placeholder: kTransparentImage, image: null)

                          /**
                           * 使用应用内图片作为占为图
                           */

//                          new FadeInImage.assetNetwork(
//                              placeholder: 'images/welcome.png',
//                              image: 'https://github.com/flutter/plugins/raw/master/packages/video_player/doc/demo_ipod.gif?raw=true'
//                          ),
                        ],
                      ),
//                      Stack(
//                        fit: StackFit.passthrough,
//                        overflow: Overflow.visible,
//                        textDirection: TextDirection.rtl,
//                        alignment: Alignment.centerLeft,
//                        children: <Widget>[
//                          new Image.asset(
//                            'images/home.png',
//                            width: 200,
//                            height: 150,
//                          )
//                        ],
//                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
