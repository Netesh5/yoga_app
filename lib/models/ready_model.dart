import 'dart:async';

import 'package:flutter/material.dart';

import 'package:yogaapp/screens/workout.dart';

class readyModel with ChangeNotifier {
  int countDown = 5;
  readyModel(context) {
    MyTimer(context);
  }
  MyTimer(BuildContext context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countDown--;

      notifyListeners();
      if (countDown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => workOut()));
      }
    });
  }
}
