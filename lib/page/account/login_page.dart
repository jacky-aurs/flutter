import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      height: 120,
      child: new Scaffold(
//        new Image.asset(
//          'images/welcome.png',
//        ),
          ),
    );

//
//    return new Scaffold(
//      appBar: AppBar(
//        actions: <Widget>[
//          Container(
//
//            child: new Image(
//              fit: BoxFit.fitWidth,
//            ),
//          ),
//        ],
//      ),
//    );
  }
}
