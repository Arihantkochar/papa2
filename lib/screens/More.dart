import 'package:flutter/material.dart';
import 'package:papa2/style/common.dart';
class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("This app is built by Arihant Kochar for his father.\nThis app maintains record of report.",style: blueTextStyle,),
      ) ,
    );
  }
}
