import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Yoga App",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}