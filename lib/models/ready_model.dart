import 'dart:async';

import 'package:flutter/widgets.dart';

class readyModel with ChangeNotifier {
  int countDown = 5;
  readyModel() {
    MyTimer();
  }
  MyTimer() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countDown--;

      notifyListeners();
      if (countDown == 0) {
        timer.cancel();
      }
    });
  }
}
