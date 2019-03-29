import 'package:flutter/cupertino.dart';
import 'package:fultterapp/Main.dart';
import 'package:fultterapp/widget/element/frame/index.dart';

class NavigatorUtils {
  //首页
  static goHome(BuildContext context) {
    Navigator.popAndPushNamed(context, Main.sName);
  }

  //frame界面
  static goFrame(BuildContext context) {
    Navigator.pushNamed(context, frameState.sName);
  }
}
