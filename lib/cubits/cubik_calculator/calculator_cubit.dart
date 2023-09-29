import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class CalculatorCubit extends Cubit<int> {
  CalculatorCubit() : super(0);

  TextEditingController acont = TextEditingController();
  TextEditingController abcont = TextEditingController();
  int newA = 0;
  int newB = 0;

  resultTwoNumbers() {
    if(acont.text.isNotEmpty){
      newA=int.parse(acont.text);
    }
    if(abcont.text.isNotEmpty){
      newB=int.parse(abcont.text);
    }
    emit(pow(newA, newB).toInt());
  }
}
