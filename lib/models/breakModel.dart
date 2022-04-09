import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yogaapp/screens/break.dart';

class breakModel with ChangeNotifier {
  breakModel(context) {
    Mytimer(context);
  }
  int countdown = 20;
  Mytimer(BuildContext context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => breakpage()));
      }
    });
  }
}
