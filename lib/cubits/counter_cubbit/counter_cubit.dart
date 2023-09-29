
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubits extends Cubit<int>{
  CounterCubits():super(0);
  increment()=>emit(state+1);
    ///state++;++state ishlamaydi chunk uning qiymati geterdan kelyapti biz qiymatiga o'zgartirish kiritolmaymiz;

  decrment()=> emit(state-1);
    ///state--;--state ishlamaydi chunk uning qiymati geterdan kelyapti biz qiymatiga o'zgartirish kiritolmaymiz;

}