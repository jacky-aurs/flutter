import 'package:flutter/material.dart';

class AlignAlignment extends StatelessWidget {
  final Alignment status;
  final String dec;

  const AlignAlignment(this.status, this.dec) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10),
      color: Color(0xffd81b60),
      width: 90.0,
      height: 50.0,
      child: Align(
        alignment: status,
        child: Text(
          dec,
          style: TextStyle(fontSize: 14.0, color: Color(0xffffffff)),
        ),
      ),
    );
  }
}

class AlignFactor extends StatelessWidget {
  final Alignment status;
  final double wFactor;
  final double hFactor;
  final String dec;

  const AlignFactor(this.status, this.wFactor, this.hFactor, this.dec)
      : super();

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      color: Color(0xffd81b60),
      child: Align(
        alignment: status,
        widthFactor: wFactor,
        heightFactor: hFactor,
        child: Container(
          color: Color(0xfff06292),
          width: 100.0,
          height: 50.0,
          child: Text(
            dec,
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
