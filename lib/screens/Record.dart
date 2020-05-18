import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:papa2/screens/History.dart';
import 'package:papa2/style/common.dart';

class Record extends StatefulWidget {
  var index;

  Record(this.index);


  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:  AppBar(
          title: Image.asset("assets/images/nmdcLogo.png"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 10,
          leading: IconButton(icon: Icon(Icons.arrow_back,color: color,), onPressed: (){
            Navigator.pop(context);
          }),
          bottom: TabBar(tabs: <Widget>[
            Tab(text: 'Shift 1',),
            Tab(text: 'Shift 2',),
            Tab(text: 'Night',),
            Tab(text: 'Total',),

          ]),
        ),
        body: TabBarView(children: [Shift11(index: widget.index,),Shift12(index: widget.index,),Shift13(index: widget.index,),Details(widget.index)]),
      ),
    );
  }
}
class Shift11 extends StatefulWidget {
  var index;

  Shift11({this.index});

  @override
  _Shift11State createState() => _Shift11State();
}

class _Shift11State extends State<Shift11> {
  Future getData() async {
    var fs = Firestore.instance;
    QuerySnapshot qn = await fs.collection("report").getDocuments();
    return qn.documents;
  }
    @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getData(),
        builder: (_,s){
          if (s.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading...",style: blueTextStyle,),
            );
          }
          else
            return SingleChildScrollView(
              child: Center(
                child: Column(
                 children: <Widget>[
                   SizedBox(height: 20,),
                   Text("14",style: blueHeadingtext,),
                   SizedBox(height: 10,),
                   Text("ROM : ${s.data[widget.index].data["t1"]}",style: bold,),
                   Text("Waste : ${s.data[widget.index].data["t2"]}",style: bold,),
                   Text("Stock Pile : ${s.data[widget.index].data["t3"]}",style: bold,),
                   Text("Plant Stoppage : ${s.data[widget.index].data["t4"]}",style: bold,),
                   Text("Down Hill : ${s.data[widget.index].data["t5"]}",style: bold,),
                   SizedBox(height: 20,),
                   Text("11C",style: blueHeadingtext,),
                   SizedBox(height: 10,),
                   Text("ROM : ${s.data[widget.index].data["t6"]}",style: bold,),
                   Text("Waste : ${s.data[widget.index].data["t7"]}",style: bold,),
                   Text("Stock Pile : ${s.data[widget.index].data["t8"]}",style: bold,),
                   Text("Plant Stoppage : ${s.data[widget.index].data["t9"]}",style: bold,),
                   Text("Down Hill : ${s.data[widget.index].data["t10"]}",style: bold,),
                   SizedBox(height: 20,),
                   Text("11B",style: blueHeadingtext,),
                   SizedBox(height: 10,),
                   Text("ROM : ${s.data[widget.index].data["t11"]}",style: bold,),
                   Text("Waste : ${s.data[widget.index].data["t12"]}",style: bold,),
                   Text("Stock Pile : ${s.data[widget.index].data["t13"]}",style: bold,),
                   Text("Plant Stoppage : ${s.data[widget.index].data["t14"]}",style: bold,),
                   Text("Down Hill : ${s.data[widget.index].data["t15"]}",style: bold,),
                   SizedBox(height: 20,),
                   Text("SP1 : ${s.data[widget.index].data["t16"]}",style: bold,),
                   Text("SP2 : ${s.data[widget.index].data["t17"]}",style: bold,),
                    SizedBox(height: 20,)
                 ],
                ),
              ),
            );
        }
    );
  }
}

class Shift12 extends StatefulWidget {
  var index;

  Shift12({this.index});

  @override
  _Shift12State createState() => _Shift12State();
}

class _Shift12State extends State<Shift12> {
  Future getData() async {
    var fs = Firestore.instance;
    QuerySnapshot qn = await fs.collection("report").getDocuments();
    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getData(),
        builder: (_,s){
          if (s.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading...",style: blueTextStyle,),
            );
          }
          else
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Text("14",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t18"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t19"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t20"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t21"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t22"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("11C",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t23"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t24"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t25"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t26"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t27"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("11B",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t28"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t29"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t30"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t31"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t32"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("SP1 : ${s.data[widget.index].data["t33"]}",style: bold,),
                    Text("SP2 : ${s.data[widget.index].data["t34"]}",style: bold,),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            );
        }
    );
  }
}

class Shift13 extends StatefulWidget {
  var index;

  Shift13({this.index});

  @override
  _Shift13State createState() => _Shift13State();
}

class _Shift13State extends State<Shift13> {
  Future getData() async {
    var fs = Firestore.instance;
    QuerySnapshot qn = await fs.collection("report").getDocuments();
    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: getData(),
        builder: (_,s){
          if (s.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading...",style: blueTextStyle,),
            );
          }
          else
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Text("14",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t35"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t36"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t37"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t38"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t39"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("11C",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t40"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t41"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t42"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t43"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t44"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("11B",style: blueHeadingtext,),
                    SizedBox(height: 10,),
                    Text("ROM : ${s.data[widget.index].data["t45"]}",style: bold,),
                    Text("Waste : ${s.data[widget.index].data["t46"]}",style: bold,),
                    Text("Stock Pile : ${s.data[widget.index].data["t47"]}",style: bold,),
                    Text("Plant Stoppage : ${s.data[widget.index].data["t48"]}",style: bold,),
                    Text("Down Hill : ${s.data[widget.index].data["t49"]}",style: bold,),
                    SizedBox(height: 20,),
                    Text("SP1 : ${s.data[widget.index].data["t50"]}",style: bold,),
                    Text("SP2 : ${s.data[widget.index].data["t51"]}",style: bold,),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            );
        }
    );
  }
}
