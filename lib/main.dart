import 'package:flutter/material.dart';
import 'package:sibha/screens/misbaha.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Misbaha",
      home: Misbaha(),
    );
  }
}
