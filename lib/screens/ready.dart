import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogaapp/models/ready_model.dart';

class ready extends StatelessWidget {
  const ready({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<readyModel>(
      create: (context) => readyModel(),
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Are you ready ?")),
              Consumer<readyModel>(
                  builder: (context, readyModel, child) =>
                      Text(readyModel.countDown.toString())),
            ],
          ),
        ),
      ),
    );
  }
}
