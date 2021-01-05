import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: TextButton(
          onPressed: play,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
        //
      )
    );
  }

  void play() {
    setState(() {
      ballNumber = Random().nextInt(5)+1;
      print('Botón presionado$ballNumber');
    });
  }
}


