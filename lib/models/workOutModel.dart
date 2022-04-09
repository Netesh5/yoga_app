import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yogaapp/screens/break.dart';

class workOutModel with ChangeNotifier {
  workOutModel(context) {
    Mytimer(context);
  }
  int countdown = 30;
  bool visible = false;
  Mytimer(BuildContext context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => breakpage()));
      }
    });
  }

  void show() {
    visible = true;
    notifyListeners();
  }

  void hide() {
    visible = false;
    notifyListeners();
  }
}
