import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Color.fromRGBO(49, 88, 171, 1),
      ),
      body: Ball(),
    ),
  ));
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 149, 251, 1),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            )),
          ],
        ),
      ),
    );
  }
}
