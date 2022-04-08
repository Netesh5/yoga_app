import 'dart:async';

import 'package:flutter/widgets.dart';

class workOutModel with ChangeNotifier {
  workOutModel() {
    Mytimer();
  }
  int countdown = 30;
  Mytimer() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();
      if (countdown == 0) {
        timer.cancel();
      }
    });
  }
}
