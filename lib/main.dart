import 'package:flutter/material.dart';
import 'package:papa2/screens/Attendance.dart';
import 'package:papa2/screens/History.dart';
import 'package:papa2/screens/More.dart';
import 'package:papa2/screens/Report.dart';
import 'package:papa2/style/common.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: color,
        accentColor: color,
      ),
      initialRoute: '1',
      routes: {
        '1': (context) => HomePage(),
        '2': (context) => Report(),
        '3':(context) => History(),
        '4':(context) => Attendance(),
        '5':(context) => More()
      },
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("assets/images/nmdcLogo.png")),
        backgroundColor: Colors.transparent,
        elevation: 10,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, '2');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: color)
                ),
                child: Text("Report",style: blueTextStyle,),),
              ),
              SizedBox(height: 30,),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, '4');
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: color)
                  ),
                  child: Text("Attendance",style: blueTextStyle,),),
              ),
              SizedBox(height: 30,),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, '3');
                },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: color)
                  ),
                  child: Text("Record",style: blueTextStyle,),),
              ),
              SizedBox(height: 30,),
              Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, '5');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                  20.0),
                      side: BorderSide(color: color),
                  ),
                  child: Text("More...",style: blueTextStyle,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
