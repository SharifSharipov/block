import 'package:block/cubits/select_cubit/select_cubit.dart';
import 'package:block/cubits/usser_cubbit/user_cubit.dart';
import 'package:block/ui/tabox/tabindex.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/counter_cubbit/counter_cubit.dart';
import 'cubits/cubik_calculator/calculator_cubit.dart';
import 'cubits/tab_cubit/tabbox_cubit.dart';
Future<void > main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_)=>CounterCubits(),
         lazy: true,
      ),
      BlocProvider(
        create: (_)=>UserCubit(),
        lazy: true,
      ),
      BlocProvider(
        create: (_)=>UserCubit(),
        lazy: true,
      ),///CalculatorCubic
      BlocProvider(
        create: (_)=>LandingPageBlock(),
        lazy: false,
      ),
      BlocProvider(
        create: (_)=>CalculatorCubit(),
        lazy: false,
      ),
      BlocProvider(
        create: (_)=>SelectCubit(),
        lazy: false,
      ),
    ], child:MyApp());
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Tabbox(),
    );
  }
}

