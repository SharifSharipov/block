import 'package:block/cubits/counter_cubbit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Screen"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.deepPurple,
      body: BlocBuilder<CounterCubits ,int>(
        builder: (context,state) {
           return Center(child: Text("Counter value:$state",style: TextStyle(color: Colors.red,fontSize: 32),),);
        },
      ),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:<Widget> [
                FloatingActionButton(
                    key: const Key('countrView_increment_floatingActionButon'),
                    child: const Icon(Icons.add),
                    onPressed: (){
                      context.read<CounterCubits>().increment();
                    }),
          FloatingActionButton(
              key: const Key('countrView_decrement_floatingActionButon'),
              child: const Icon(Icons.remove),
              onPressed: (){
                context.read<CounterCubits>().decrment();
              }),
        ],
      )
    );
  }
}
