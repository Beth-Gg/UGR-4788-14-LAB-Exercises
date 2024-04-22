import 'package:flutter/material.dart';
class CounterProvider extends ChangeNotifier {
  
   int counterValue;

  CounterProvider({
    this.counterValue = 0,
  });


   void incrementNumber() {
    counterValue++;
    notifyListeners();// To notify all the listeners that the value may change
  }

  void decrementNumber() {
    counterValue--;
    notifyListeners();
  }
}

