import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yogaapp/models/ready_model.dart';

class ready extends StatelessWidget {
  const ready({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<readyModel>(
      create: (context) => readyModel(context),
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text("Are you ready ?",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 50,
              ),
              Consumer<readyModel>(
                  builder: (context, readyModel, child) => Text(
                      readyModel.countDown.toString(),
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
