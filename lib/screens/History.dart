import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:papa2/screens/Record.dart';
import 'package:papa2/style/common.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  Future getData() async {
    var fs = Firestore.instance;
    QuerySnapshot qn = await fs.collection("report").getDocuments();
    return qn.documents;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/nmdcLogo.png"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 10,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: color,), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Container(
        child: FutureBuilder(future: getData(),
            builder: (_, snapshot) {
         if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading...",style: blueTextStyle,),
            );
          }
          else {
           return ListView.builder(itemCount: snapshot.data.length,
               itemBuilder: (_, index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     child: Center(
                       child: ListTile(title: Text(
                         snapshot.data[index].data["date"],
                         style: blueTextStyle,),
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(
                               builder: (context) => Record(index)));
                         },
                       ),
                     ),
                   ),
                 );
               });
         }
        }),
      ),
    );
  }
}
class Details extends StatefulWidget {
  var index;

  Details(this.index);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Future getData() async {
    var fs = Firestore.instance;
    QuerySnapshot qn = await fs.collection("report").getDocuments();
    return qn.documents;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(future: getData(),
          builder: (_,s){
            if (s.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: Center(
                  child: Text("Loading...",style: blueTextStyle,),
                ),
              );
            }

        else return Scaffold(
          /*appBar: AppBar(
            centerTitle: true,
            title: Text(s.data[widget.index].data["date"]),
          ),*/
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 25,),
                  Text("Shift 1",style: blueHeadingtext,),
                  SizedBox(height: 20,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t1"])+double.parse(s.data[widget.index].data["t6"])+double.parse(s.data[widget.index].data["t11"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t2"])+double.parse(s.data[widget.index].data["t7"])+double.parse(s.data[widget.index].data["t12"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t3"])+double.parse(s.data[widget.index].data["t8"])+double.parse(s.data[widget.index].data["t13"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t4"])+double.parse(s.data[widget.index].data["t9"])+double.parse(s.data[widget.index].data["t14"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t5"])+int.parse(s.data[widget.index].data["t10"])+int.parse(s.data[widget.index].data["t15"])}",style: bold,),
                  Text("SP : ${s.data[widget.index].data["t16"]} , ${s.data[widget.index].data["t17"]}",style: bold,),
                  SizedBox(height: 25,),
                  Text("Shift 2",style: blueHeadingtext,),
                  SizedBox(height: 20,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t18"])+double.parse(s.data[widget.index].data["t23"])+double.parse(s.data[widget.index].data["t28"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t19"])+double.parse(s.data[widget.index].data["t24"])+double.parse(s.data[widget.index].data["t29"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t20"])+double.parse(s.data[widget.index].data["t25"])+double.parse(s.data[widget.index].data["t30"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t21"])+double.parse(s.data[widget.index].data["t26"])+double.parse(s.data[widget.index].data["t31"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t22"])+int.parse(s.data[widget.index].data["t27"])+int.parse(s.data[widget.index].data["t32"])}",style: bold,),
                  Text("SP : ${s.data[widget.index].data["t33"]} , ${s.data[widget.index].data["t34"]}",style: bold,),
                  SizedBox(height: 25,),
                  Text("Night Shift",style: blueHeadingtext,),
                  SizedBox(height: 20,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t35"])+double.parse(s.data[widget.index].data["t40"])+double.parse(s.data[widget.index].data["t45"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t36"])+double.parse(s.data[widget.index].data["t41"])+double.parse(s.data[widget.index].data["t46"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t37"])+double.parse(s.data[widget.index].data["t42"])+double.parse(s.data[widget.index].data["t47"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t38"])+double.parse(s.data[widget.index].data["t43"])+double.parse(s.data[widget.index].data["t48"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t39"])+int.parse(s.data[widget.index].data["t44"])+int.parse(s.data[widget.index].data["t49"])}",style: bold,),
                  Text("SP : ${s.data[widget.index].data["t50"]} , ${s.data[widget.index].data["t51"]}",style: bold,),
                  SizedBox(height: 25,),
                  Text("Over All Total",style: blueHeadingtext,),
                  SizedBox(height: 20,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t1"])+double.parse(s.data[widget.index].data["t6"])+double.parse(s.data[widget.index].data["t11"])+double.parse(s.data[widget.index].data["t18"])+double.parse(s.data[widget.index].data["t23"])+double.parse(s.data[widget.index].data["t28"])+double.parse(s.data[widget.index].data["t35"])+double.parse(s.data[widget.index].data["t40"])+double.parse(s.data[widget.index].data["t45"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t2"])+double.parse(s.data[widget.index].data["t7"])+double.parse(s.data[widget.index].data["t12"])+double.parse(s.data[widget.index].data["t19"])+double.parse(s.data[widget.index].data["t24"])+double.parse(s.data[widget.index].data["t29"])+double.parse(s.data[widget.index].data["t36"])+double.parse(s.data[widget.index].data["t41"])+double.parse(s.data[widget.index].data["t46"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t3"])+double.parse(s.data[widget.index].data["t8"])+double.parse(s.data[widget.index].data["t13"])+double.parse(s.data[widget.index].data["t20"])+double.parse(s.data[widget.index].data["t25"])+double.parse(s.data[widget.index].data["t30"])+double.parse(s.data[widget.index].data["t37"])+double.parse(s.data[widget.index].data["t42"])+double.parse(s.data[widget.index].data["t47"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t4"])+double.parse(s.data[widget.index].data["t9"])+double.parse(s.data[widget.index].data["t14"])+double.parse(s.data[widget.index].data["t21"])+double.parse(s.data[widget.index].data["t26"])+double.parse(s.data[widget.index].data["t31"])+double.parse(s.data[widget.index].data["t38"])+double.parse(s.data[widget.index].data["t43"])+double.parse(s.data[widget.index].data["t48"])}",style: bold,),
                  Text("Down Hill : ${double.parse(s.data[widget.index].data["t5"])+double.parse(s.data[widget.index].data["t10"])+double.parse(s.data[widget.index].data["t15"])+double.parse(s.data[widget.index].data["t22"])+double.parse(s.data[widget.index].data["t27"])+double.parse(s.data[widget.index].data["t32"])+double.parse(s.data[widget.index].data["t39"])+double.parse(s.data[widget.index].data["t44"])+double.parse(s.data[widget.index].data["t49"])}",style: bold,),
                  Text("SP Total : ${double.parse(s.data[widget.index].data["t16"])+double.parse(s.data[widget.index].data["t33"])+double.parse(s.data[widget.index].data["t50"])+double.parse(s.data[widget.index].data["t17"])+double.parse(s.data[widget.index].data["t34"])+double.parse(s.data[widget.index].data["t51"])}",style: bold,),
                  SizedBox(height: 25,),
                  Text("Mining Wise Total",style: blueHeadingtext,),
                  SizedBox(height: 20,),
                  Text("14",style: blueHeadingtext,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t1"])+double.parse(s.data[widget.index].data["t18"])+double.parse(s.data[widget.index].data["t35"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t2"])+double.parse(s.data[widget.index].data["t19"])+double.parse(s.data[widget.index].data["t36"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t3"])+double.parse(s.data[widget.index].data["t20"])+double.parse(s.data[widget.index].data["t37"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t4"])+double.parse(s.data[widget.index].data["t21"])+double.parse(s.data[widget.index].data["t38"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t5"])+int.parse(s.data[widget.index].data["t22"])+int.parse(s.data[widget.index].data["t39"])}",style: bold,),
                  SizedBox(height: 20,),
                  Text("11C",style: blueHeadingtext,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t6"])+double.parse(s.data[widget.index].data["t23"])+double.parse(s.data[widget.index].data["t40"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t7"])+double.parse(s.data[widget.index].data["t24"])+double.parse(s.data[widget.index].data["t41"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t8"])+double.parse(s.data[widget.index].data["t25"])+double.parse(s.data[widget.index].data["t42"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t9"])+double.parse(s.data[widget.index].data["t26"])+double.parse(s.data[widget.index].data["t43"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t10"])+int.parse(s.data[widget.index].data["t27"])+int.parse(s.data[widget.index].data["t44"])}",style: bold,),
                  SizedBox(height: 20,),
                  Text("11B",style: blueHeadingtext,),
                  Text("ROM : ${double.parse(s.data[widget.index].data["t11"])+double.parse(s.data[widget.index].data["t28"])+double.parse(s.data[widget.index].data["t45"])}",style: bold,),
                  Text("Waste : ${double.parse(s.data[widget.index].data["t12"])+double.parse(s.data[widget.index].data["t29"])+double.parse(s.data[widget.index].data["t46"])}",style: bold,),
                  Text("Stock Pile : ${double.parse(s.data[widget.index].data["t13"])+double.parse(s.data[widget.index].data["t30"])+double.parse(s.data[widget.index].data["t47"])}",style: bold,),
                  Text("Plant Stoppage : ${double.parse(s.data[widget.index].data["t14"])+double.parse(s.data[widget.index].data["t31"])+double.parse(s.data[widget.index].data["t48"])}",style: bold,),
                  Text("Down Hill : ${int.parse(s.data[widget.index].data["t15"])+int.parse(s.data[widget.index].data["t32"])+int.parse(s.data[widget.index].data["t49"])}",style: bold,),
                  SizedBox(height: 20,),
                  Text("SP",style: blueHeadingtext,),
                  Text("SP1 : ${double.parse(s.data[widget.index].data["t16"])+double.parse(s.data[widget.index].data["t33"])+double.parse(s.data[widget.index].data["t50"])}",style: bold,),
                  Text("SP2 : ${double.parse(s.data[widget.index].data["t17"])+double.parse(s.data[widget.index].data["t34"])+double.parse(s.data[widget.index].data["t51"])}",style: bold,),
                  SizedBox(height: 25,),
                  RaisedButton(onPressed: (){
                   Navigator.pushNamed(context, '1');
                  },
                    child: Text("Done"),),
                  SizedBox(height: 25,)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

