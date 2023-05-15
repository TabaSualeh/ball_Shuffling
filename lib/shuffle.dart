// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:math';

import 'package:ball_shuffling/button.dart';
import 'package:flutter/material.dart';

class ballshuffle extends StatefulWidget {
  const ballshuffle({Key? key}) : super(key: key);

  @override
  State<ballshuffle> createState() => _ballshuffleState();
}

class _ballshuffleState extends State<ballshuffle> {
  bool pressedBtn = false;
  String ballimg = "assets/ball1.png";

  void shuffle() {
    int num1 = Random().nextInt(5) + 1;
    setState(() {
      pressedBtn = true;
      ballimg = "assets/ball$num1.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Ask Me Anything...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            pressedBtn
                ? Image.asset(
                    ballimg,
                    width: 210,
                    height: 210,
                  )
                : SizedBox(
                    height: 210,
                    width: 210,
                  ),
            MyButton(
              btnName: "Ask",
              callback: shuffle,
            )
          ],
        ),
      ),
    );
  }
}
