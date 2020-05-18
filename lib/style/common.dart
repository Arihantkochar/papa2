import 'package:flutter/material.dart';

Color color = Colors.indigo[900];
final blueTextStyle = TextStyle(fontSize: 25,color: color);
 final appBar = AppBar(
   title: Image.asset("assets/images/nmdcLogo.png"),
   centerTitle: true,
   backgroundColor: Colors.transparent,
   elevation: 10,
   leading: IconButton(icon: Icon(Icons.arrow_back,color: color,), onPressed: (){
   }),
 );

 final bold = TextStyle(fontWeight: FontWeight.bold,fontSize: 16);
  final blueHeadingtext = TextStyle(fontSize: 35,color: color,fontWeight: FontWeight.bold);