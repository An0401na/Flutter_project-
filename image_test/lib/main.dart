import 'package:flutter/material.dart';
import 'Restaurant_List.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Restaurant_List(),
    );
  }
}
