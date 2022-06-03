import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const Test());
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
