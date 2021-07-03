import 'package:flutter/material.dart';
import 'dart:math';

void main() {
    return runApp(
      MaterialApp(
        home : Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar : AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text('Ask Me Anything')),
          ),
          body : Ball(),
        ),
      ),
    );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = Random().nextInt(5)+1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('Ball_image/ball$num.png'),
            ),
          ),
        ],
      ),
    );
  }
}
