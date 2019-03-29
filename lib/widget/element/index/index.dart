import 'package:flutter/material.dart';

const String _stackText0 = """### **简介**
> 显示一个子项列表的单个子项。
- 只显示指定位置的widget，其他的位置的widget不会显示，所以indexedStack的尺寸永远和最大的子节点一样。
- 显示的子项widget是给到了具体的索引选择出来的widget
- 如果value 为null，将不显示任何内容
""";
const String _stackText1 = """### **基本用法**
> index → int
- 控制显示child的索引
- ex:可以通过多个图片转化表示状态（正确，错误，警告等）。
 """;

class IndexStack extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IndexDemo();
  }
}

class IndexDemo extends State<IndexStack>{

  @override
  Widget build(BuildContext context) {
    return null;
  }

}