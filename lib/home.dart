// ignore_for_file: prefer_const_constructors

import 'package:ball_shuffling/shuffle.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ball Shuffle"),
      ),
      body: ballshuffle(),
    );
  }
}
