import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:block/cubits/select_cubit/select_color.dart';

class SelectCubit extends Cubit<SelectColor> {
  SelectCubit() : super(SelectColor(List.generate(14, (index) => Color(0xff808080))));

  bool isButtonPressed = true;

   update(int buttonIndex) {
    isButtonPressed = !isButtonPressed;
    final updatedColors =List<Color>.from(state.mycolor);
    updatedColors[buttonIndex]=isButtonPressed? Color(0xff808080):Color(0xff008000);
    emit(SelectColor(updatedColors));
  }
}
