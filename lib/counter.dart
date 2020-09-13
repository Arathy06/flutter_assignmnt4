import 'package:flutter/material.dart';


class counter extends StatefulWidget {
  @override
  _counterState createState() => _counterState();
}

class _counterState extends State<counter> {
  String value="0";
  int _c=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blueAccent,Colors.deepPurple]),
        ),
        child: Column(
          children: [
            SizedBox(height: 30.0,),
            Center(
              child: RaisedButton(onPressed: (){
                _c++;
                setState(() {
                  value=_c.toString();
                });
              },
                child: Text("+",style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20.0,
                ),),

              ),
            ),
            SizedBox(height: 30.0,),
            Center(
              child: RaisedButton(onPressed: (){
                _c--;
                setState(() {
                  value=_c.toString();
                });
              },
                child: Text("-",style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.0,
                ),),
              ),
            ),
            SizedBox(height: 30.0,),
            Center(
              child: Text(value,style: TextStyle(
                color: Colors.cyan,
                fontSize: 20.0,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
