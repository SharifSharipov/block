import 'package:block/cubits/usser_cubbit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/usser_cubbit/user_state.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController userNamecontroller=TextEditingController();
  final TextEditingController userAgecontroller=TextEditingController();
  @override
  void initState() {
   UserState userState=BlocProvider.of<UserCubit>(context).state;
   userNamecontroller.text=userState.userName;
   if(userState.userAge!=null){
     userAgecontroller.text=userState.userAge.toString();
   }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      context.read<UserCubit>().updateUserName(value);
                    },
                    decoration: const InputDecoration(hintText: "Username"),
                  ),
                  TextField(
                  keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        context.read<UserCubit>().updateUserAge(int.parse(value));
                      }
                    },
                    decoration: const InputDecoration(hintText: "User age"),
                  ),
                  Text(
                    state.toString(),
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
            );
          },
          buildWhen: (previous,current){
            print("PREVIOUS:$previous");
            print("CURRENT:$current");
          ///  previous ,currentam state
              return current!=previous;/// buildven false qilsak ui update bo'maydi state o'zgarmaydi

          },
        ),
      ),
    );
  }
}
