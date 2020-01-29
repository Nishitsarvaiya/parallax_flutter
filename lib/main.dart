import 'package:flutter/material.dart';
import 'package:parallex_flutter/parallax.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Parallax Effect',
      home: Parallax(),
    );
  }
}
