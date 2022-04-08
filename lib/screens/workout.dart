import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogaapp/models/workOutModel.dart';

class workOut extends StatelessWidget {
  const workOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<workOutModel>(
      create: (context) => workOutModel(),
      child: Scaffold(
        body: Container(
          child: Text("Start Yoga"),
        ),
      ),
    );
  }
}
