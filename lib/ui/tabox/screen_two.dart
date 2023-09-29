import 'package:block/ui/tabox/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/cubik_calculator/calculator_cubit.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Calculator"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: BlocBuilder<CalculatorCubit, int>(
          builder: (BuildContext context, state) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ObscuredTextFieldSample(
                    labeltext: 'First number enter',
                    onChanged: (value) {
                      context
                          .read<CalculatorCubit>()
                          .resultTwoNumbers();
                    },
                    controller: context.read<CalculatorCubit>().acont,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ObscuredTextFieldSample(
                    labeltext: 'Second number enter',
                    onChanged: (value) {
                      context
                          .read<CalculatorCubit>()
                          .resultTwoNumbers();
                    },
                    controller: context.read<CalculatorCubit>().abcont,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Result:${state.toString()}",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
