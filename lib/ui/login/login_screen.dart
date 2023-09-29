import 'package:block/cubits/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/login_cubit/login_cubbit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login cubbit"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  BlocProvider.of<LogginCubit>(context)
                      .signIn("login", "password");
                },
                child: const Text("SIGN IN USER")),
            TextButton(
                onPressed: () {
                  BlocProvider.of<LogginCubit>(context)
                      .SigUp("login", "userName", "password");
                },
                child: const Text("SIGN UP USER")),
            TextButton(
                onPressed: () {
                  BlocProvider.of<LogginCubit>(context).LogOutUser();
                },
                child: const Text("LOG OUT USER")),
            BlocBuilder<LogginCubit, LoginState>(builder: (context, state) {
              if (state is InitialState) {
                return const Text(
                  "Hech nars bo'lamadi",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                );
              }
              if (state is SignInState) {
                return const Text(
                  "Foydalanuvchi sigIn qilyapti",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                );
              }
              if (state is SignUpState) {
                return const Text(
                  "Foydalanuvchi registratsiya  qilyapti",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                );
              }
              if (state is LoggedState) {
                return const Text(
                  "Foydalanuvchi Mufaqatyatli auntificate bo'ldi ",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                );
              }

                return const Text(
                  "Foydalanuvchi LOGGED OUT",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                );

            }),
          ],
        ),
      ),
    );
  }
}
