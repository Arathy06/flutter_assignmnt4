
import 'package:flutter/material.dart';
import 'package:flutterapp/counter.dart';
void main()
{
  runApp(Homepage());
}

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("My home"),
          ),
          body: counter()
      ),


    );
  }
}