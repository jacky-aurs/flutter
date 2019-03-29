import 'package:flutter/material.dart';
import 'package:fultterapp/widget/element/frame/index.dart';
import 'package:fultterapp/widget/element/stack/index.dart';

class ItemMode {
  final String title;
  final Route route;

  const ItemMode(this.title, this.route);
}

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FindPageWidget();
  }
}

class FindPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FindPageState();
  }
}

class FindPageState extends State<StatefulWidget> {
  final List<ItemMode> _items = [];

  _getItems() {
    _items.clear();
    _items.add(new ItemMode('/widget/element/frameState',
        MaterialPageRoute(builder: (BuildContext context) => frameState())));
    _items.add(new ItemMode('/widget/element/StackState',
        MaterialPageRoute(builder: (BuildContext context) => StackState())));
    _items.add(new ItemMode('/widget/element/IndexStack',
        MaterialPageRoute(builder: (BuildContext context) => IndexedStack())));
  }

  String _getItemTitle(int index) {
    return _items[index].title;
  }

  Route _getItemRoute(int index) {
    return _items[index].route;
  }

  void _onTap(BuildContext context, int index) {
    Navigator.push(context, _getItemRoute(index));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _getItems();

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('发现'),
        ),
        body: ListView.builder(
          padding: new EdgeInsets.all(10.0),
          itemBuilder: (BuildContext context, int index) {
            print(_getItemTitle(index));
            return RawMaterialButton(
              child: Text('${_getItemTitle(index)}'),
              onPressed: () => _onTap(context, index),
              padding: const EdgeInsets.all(16.0),
              constraints: BoxConstraints(minHeight: 0, maxHeight: 2),
            );
          },

          //总条数
          itemCount: _items.length,
        ),
      ),
    );
  }
}
