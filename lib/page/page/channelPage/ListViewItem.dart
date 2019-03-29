import 'package:flutter/material.dart';
import 'dart:core';

class ListviewItem extends StatelessWidget {
  final String itemUrl;
  final String itemTitle;
  final String data;

  const ListviewItem({Key key, this.itemUrl, this.itemTitle, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: Colors.white,
      elevation: 4.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        onTap: () {},
        title: Padding(
          padding: new EdgeInsets.only(top: 10),
          child: new Text(
            itemTitle,
            style: TextStyle(color: Colors.black, fontSize: 15.0),
          ),
        ),
        subtitle: Row(
          children: <Widget>[
            Padding(
              child: Text(
                data,
                style: TextStyle(color: Colors.black54, fontSize: 10.0),
              ),
              padding: EdgeInsets.only(top: 10, bottom: 10),
            )
          ],
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.grey,
          size: 30.0,
        ),
      ),
    );
  }
}
