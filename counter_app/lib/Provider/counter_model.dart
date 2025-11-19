//Providers

// ignore_for_file: unused_element

// import 'package:flutter/material.dart';

// class CounterModel extends ChangeNotifier {
//   int countValue = 0;

//   get countValue => countValue;

//   void increaseCount(){
//       countValue++;
//       notifyListeners();
//   }

//    void decreaseCount(){
//     if (countValue > 0){
//       countValue--;
//       notifyListeners();}
//   }

//   void increaseByTen(){
//       countValue += 10;
//       notifyListeners();
//   }

//   void decreaseByTen(){
//     if (countValue >= 10){
//       countValue -= 10;
//       notifyListeners();}else{
//         countValue = 0;
//         notifyListeners();
//       }
//   }
// }


//Riverpod

import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int countValue = 0;

  CounterModel({required this.countValue});

  void increaseCount(){
      countValue++;
      notifyListeners();
  }

   void decreaseCount(){
    if (countValue > 0){
      countValue--;
      notifyListeners();}
  }

  void increaseByTen(){
      countValue += 10;
      notifyListeners();
  }

  void decreaseByTen(){
    if (countValue >= 10){
      countValue -= 10;
      notifyListeners();}else{
        countValue = 0;
        notifyListeners();
      }
  }
}