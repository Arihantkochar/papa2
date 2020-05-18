import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:papa2/screens/Shift1.dart';
import 'package:papa2/style/common.dart';

class Shift2 extends StatefulWidget {
  @override
  _Shift2State createState() => _Shift2State();
}
var t18 = TextEditingController();
var t19 = TextEditingController();
var t20 = TextEditingController();
var t21 = TextEditingController();
var t22 = TextEditingController();
var t23 = TextEditingController();
var t24 = TextEditingController();
var t25 = TextEditingController();
var t26 = TextEditingController();
var t27 = TextEditingController();
var t28 = TextEditingController();
var t29 = TextEditingController();
var t30 = TextEditingController();
var t31 = TextEditingController();
var t32 = TextEditingController();
var t33 = TextEditingController();
var t34 = TextEditingController();
class _Shift2State extends State<Shift2> {


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
            Row1(t18,t19),
            SizedBox(height: 20,),
            Row2(t20,t21),
            SizedBox(height: 20,),
            DH(t22),
            SizedBox(height: 40,),
            Text("11C",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t23,t24),
            SizedBox(height: 20,),
            Row2(t25,t26),
            SizedBox(height: 20,),
            DH(t27),
            SizedBox(height: 40,),
            Text("11B",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t28,t29),
            SizedBox(height: 20,),
            Row2(t30,t31),
            SizedBox(height: 20,),
            DH(t32),
            SizedBox(height: 40,),
            Text("SP",style: blueHeadingtext,),
            SizedBox(height: 25,),
            RowSp(t33, t34),
            SizedBox(height: 40,),
            RaisedButton(onPressed: (){
              PutReportS2();
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
void PutReportS2() async{
  await dR.collection("report").document(cDt).updateData({
    't18':t18.text,
    't19':t19.text,
    't20':t20.text,
    't21':t21.text,
    't22':t22.text,
    't23':t23.text,
    't24':t24.text,
    't25':t25.text,
    't26':t26.text,
    't27':t27.text,
    't28':t28.text,
    't29':t29.text,
    't30':t30.text,
    't31':t31.text,
    't32':t32.text,
    't33':t33.text,
    't34':t34.text,

  });
}
