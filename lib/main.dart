import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //block banner
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Food Menu"),
        ),
        body: Menu(),  //เรียกใช้ menu widget
      ),
    );
  }
}