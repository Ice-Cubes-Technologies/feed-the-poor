import 'package:feed_the_poor/Screens/Home/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feed The Poor',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {'/': (context) => Home()},
    );
  }
}
