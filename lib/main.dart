import 'package:flutter/material.dart';
import 'package:yogaapp/screens/homepage.dart';
import 'package:yogaapp/screens/startup.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "ubuntu"),
      home: startUp(),
    );
  }
}
