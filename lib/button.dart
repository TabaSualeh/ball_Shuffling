// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? callback;
  final double? fontSize;

  MyButton({required this.btnName, this.callback, this.fontSize = 23});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(
        btnName,
        style: TextStyle(fontSize: fontSize),
      ),
      style: ElevatedButton.styleFrom(fixedSize: Size(90, 30)),
    );
  }
}
