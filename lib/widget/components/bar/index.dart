import 'package:flutter/material.dart';
class TitleBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TitleBarState();
  }
}

class TitleBarState extends State<TitleBar>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        Container(
          child: AppBarLessDefaultSimple('asd',context,context),
        )
      ],
    );
  }
}


class AppBarLessDefaultSimple extends StatelessWidget{

  final widget;
  final parent;
  final String titleName;

  const AppBarLessDefaultSimple(this.titleName,this.widget, this.parent) : super();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 200,
      child: AppBar(
        title: new Text(titleName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
            onPressed: (){},
          ),

          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            onPressed: (){},
            tooltip: 'Repair it',
          ),

        ],
      ),
    );
  }
}