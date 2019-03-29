import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget {
  final String titleNames;

  const myAppBar(this.titleNames) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 50,
      decoration: new BoxDecoration(color: Colors.black),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: new Row(
        //row 相当于水平布局

        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).canPop();
              }),
          new Expanded(child: new Text(titleNames)),
          new IconButton(
              icon: new Image.asset('images/home.png'),
              onPressed: () {
                Navigator.canPop(context);
              })
        ],
      ),
    );
  }
}
