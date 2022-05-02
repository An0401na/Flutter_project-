import 'package:flutter/material.dart';
import 'JsonParseDemo.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParseDemo(),
    );
  }
}
