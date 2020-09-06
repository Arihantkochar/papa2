import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:papa2/style/common.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
var t1 = TextEditingController();
var t2 = TextEditingController();
var t3 = TextEditingController();
var t4 = TextEditingController();
var t5 = TextEditingController();
var t6 = TextEditingController();
var t7 = TextEditingController();
var t8 = TextEditingController();
var t9 = TextEditingController();
var t10 = TextEditingController();
var t11 = TextEditingController();
var t12 = TextEditingController();
var t13 = TextEditingController();
var t14 = TextEditingController();
var t15 = TextEditingController();
var t16 = TextEditingController();
var t17 = TextEditingController();

class Shift1 extends StatefulWidget {

  @override
  _Shift1State createState() => _Shift1State();
}
final dR = Firestore.instance;
var dt = DateTime.now();
String cDt = DateFormat.yMMMEd().format(dt) ;
var ldt = dt.subtract(Duration(days: 1));
var lDt = DateFormat.yMMMEd().format(ldt);
class _Shift1State extends State<Shift1> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Text("14",style:blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t1,t2),
            SizedBox(height: 20,),
            Row2(t3,t4),
            SizedBox(height: 20,),
            DH(t5),
            SizedBox(height: 40,),
            Text("11C",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t6,t7),
            SizedBox(height: 20,),
            Row2(t8,t9),
            SizedBox(height: 20,),
            DH(t10),
            SizedBox(height: 40,),
            Text("11B",style: blueHeadingtext,),
            SizedBox(height: 25,),
            Row1(t11,t12),
            SizedBox(height: 20,),
            Row2(t13,t14),
            SizedBox(height: 20,),
            DH(t15),
            SizedBox(height: 40,),
            Text("SP",style:blueHeadingtext,),
            SizedBox(height: 25,),
            RowSp(t16, t17),
            SizedBox(height: 40,),
            RaisedButton(onPressed: (){
              PutReportS1();
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

class Row1 extends StatelessWidget {
  var t1 = TextEditingController();
  var t2 = TextEditingController();

  Row1(this.t1, this.t2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:88.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
               controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'ROM'
              ),
            ),
          ),
          SizedBox(width: 50,),
          Container(

            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
               controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'Waste'
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Row2 extends StatelessWidget {
  var t1 = TextEditingController();
  var t2 = TextEditingController();

  Row2(this.t1, this.t2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:88.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'Stock Pile'
              ),
            ),
          ),
          SizedBox(width: 50,),
          Container(
            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'PlantStoppage'
              ),
            ),
          ),

        ],
      ),
    );
  }
}
// ignore: must_be_immutable
class DH extends StatelessWidget {
  var t1 = TextEditingController();

  DH(this.t1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

      ),
      width: 100,
      height: 30,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: t1,
        decoration: InputDecoration(
          //border: InputBorder.none,
            hintText: 'DownHill'
        ),
      ),
    );
  }
}
class RowSp extends StatelessWidget {
  var t1 = TextEditingController();
  var t2 = TextEditingController();

  RowSp(this.t1, this.t2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:88.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'SP1'
              ),
            ),
          ),
          SizedBox(width: 50,),
          Container(

            decoration: BoxDecoration(

            ),
            width: 100,
            height: 30,
            child: TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //border: InputBorder.none,
                  hintText: 'SP2'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
void PutReportS1() async{
  await dR.collection("report").document(cDt).setData({
    'date': cDt.toString(),
    't1':t1.text,
    't2':t2.text,
    't3':t3.text,
    't4':t4.text,
    't5':t5.text,
    't6':t6.text,
    't7':t7.text,
    't8':t8.text,
    't9':t9.text,
    't10':t10.text,
    't11':t11.text,
    't12':t12.text,
    't13':t13.text,
    't14':t14.text,
    't15':t15.text,
    't16':t16.text,
    't17':t17.text,

  });
}
