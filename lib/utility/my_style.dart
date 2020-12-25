import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade700;

  // Widget showLogo() {
  //   return Image.asset('images/logo.png');
  // }

  Widget showLogo() => Image.asset('images/logo.png');

  Widget showTitle(String string) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          string,
          style: TextStyle(
            color: darkColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  InputDecoration myInputDecoration() => InputDecoration(
    enabledBorder: OutlineInputBorder(),
  );

  MyStyle();
}
