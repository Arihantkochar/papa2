import 'package:flutter/material.dart';
import 'package:papa2/screens/Shift1.dart';
import 'package:papa2/style/common.dart';
class Shift3 extends StatefulWidget {
  @override
  _Shift3State createState() => _Shift3State();
}
var t35 = TextEditingController();
var t36 = TextEditingController();
var t37 = TextEditingController();
var t38 = TextEditingController();
var t39 = TextEditingController();
var t40 = TextEditingController();
var t41 = TextEditingController();
var t42 = TextEditingController();
var t43 = TextEditingController();
var t44 = TextEditingController();
var t45 = TextEditingController();
var t46 = TextEditingController();
var t47 = TextEditingController();
var t48 = TextEditingController();
var t49 = TextEditingController();
var t50 = TextEditingController();
var t51 = TextEditingController();

class _Shift3State extends State<Shift3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Text("14",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t35,t36),
            SizedBox(height: 20,),
            Row2(t37,t38),
            SizedBox(height: 20,),
            DH(t39),
            SizedBox(height: 40,),
            Text("11C",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t40,t41),
            SizedBox(height: 20,),
            Row2(t42,t43),
            SizedBox(height: 20,),
            DH(t44),
            SizedBox(height: 40,),
            Text("11B",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t45,t46),
            SizedBox(height: 20,),
            Row2(t47,t48),
            SizedBox(height: 20,),
            DH(t49),
            SizedBox(height: 40,),
            Text("SP",style: blueHeadingtext,),
            SizedBox(height: 25,),
            RowSp(t50, t51),
            SizedBox(height: 40,),
            RaisedButton(onPressed: (){
              PutReportS3();
              setState(() {
                AlertDialog(
                  title: Text("Saved"),
                );
                Navigator.pop(context);
              });
            },
              child: Text("Done"),),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
void PutReportS3() async{
  await dR.collection("report").document(lDt).updateData({
    't35':t35.text,
    't36':t36.text,
    't37':t37.text,
    't38':t38.text,
    't39':t39.text,
    't40':t40.text,
    't41':t41.text,
    't42':t42.text,
    't43':t43.text,
    't44':t44.text,
    't45':t45.text,
    't46':t46.text,
    't47':t47.text,
    't48':t48.text,
    't49':t49.text,
    't50':t50.text,
    't51':t51.text,

  });
}
