import 'package:flutter/material.dart';
import 'package:papa2/screens/Shift1.dart';
import 'package:papa2/screens/Shift2.dart';
import 'package:papa2/screens/Shift3.dart';
import 'package:papa2/style/common.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}
class _ReportState extends State<Report> {
  final tabs = [
    Shift1(),
    Shift2(),
    Shift3(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/nmdcLogo.png"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 10,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: color,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        elevation: 15,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_low),
              title: Text(
                "Shift 1",
                style: bold,
              ),
              backgroundColor: Colors.indigo[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_4),
              title: Text(
                "Shift 2",
                style: bold,
              ),
              backgroundColor: color),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_2),
              title: Text(
                "Night",
                style: bold,
              ),
              backgroundColor: Colors.indigo[700]),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
