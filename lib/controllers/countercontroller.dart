import 'package:flutter/cupertino.dart';

class CounterController extends ChangeNotifier {
  int counter = 0;

  plus1Counter() {
    counter = counter + 1;
    notifyListeners();
  }

  minus1Counter(){

    counter = counter-1;
    notifyListeners();
  }

}
