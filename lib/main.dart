import 'package:flutter/material.dart';
import 'package:myapp/navbar.dart';
import 'package:myapp/web-screen.dart';

void main() => runApp(MobileClub());

class MobileClub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile club',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return Navbar();
        } else {
          return WebScreen();
        }
      }),
    );
  }
}
