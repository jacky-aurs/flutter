import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fultterapp/Main.dart';
import 'package:fultterapp/common/s/utils/NavigatorUtils.dart';
import 'package:fultterapp/common/s/utils/ToastUtils.dart';

void main() => runApp(WelComePage());

class WelComePage extends StatelessWidget {
  static final String sName = "/";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      showPerformanceOverlay: false,
      home: new WelComeWidget(),
      routes: <String, WidgetBuilder>{
        '/Main': (BuildContext context) => new Main()
      },
    );

    // TODO: implement build
//    return new WelComeWidget();
  }
}

class WelComeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WelComeState();
  }
}

class WelComeState extends State<WelComeWidget> {
  bool hadInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (hadInit) {
      return;
    }

    hadInit = true;

    new Future.delayed(const Duration(seconds: 3), () {
      ToastUtils.showLongMsg('当前处于启动页面', true, context);
      NavigatorUtils.goHome(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/welcome.png'),
      ),
    );
  }
}
