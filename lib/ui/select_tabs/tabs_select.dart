import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/select_cubit/select_color.dart';
import '../../cubits/select_cubit/select_cubit.dart';

class SingleFromTabs extends StatefulWidget {
  const SingleFromTabs({super.key});

  @override
  State<SingleFromTabs> createState() => _SingleFromTabsState();
}

class _SingleFromTabsState extends State<SingleFromTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Tabs select"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: BlocBuilder<SelectCubit, SelectColor>(
        builder: (BuildContext context, SelectColor state) {
          return SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 70,
                            width: 80,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<SelectCubit>().update(index);
                              },
                              child: Text(""),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      context.read<SelectCubit>().state.mycolor[index]),
                            ),
                          ),
                        ))
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
