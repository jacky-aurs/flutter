import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SettingWidget();
  }
}

class SettingWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingState();
  }
}

class SettingState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          '设置',
          style: new TextStyle(color: Colors.amber, fontSize: 18),
        ),
      ),
    );
  }
}
