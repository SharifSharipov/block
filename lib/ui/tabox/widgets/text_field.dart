import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

class ObscuredTextFieldSample extends StatelessWidget {
  const ObscuredTextFieldSample({super.key, required this.labeltext, required this.onChanged, required this.controller});
  final String labeltext;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 360,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText:labeltext,
        ),
      ),
    );
  }
}

/*
class TextFieldExampleApp extends StatelessWidget {
  const TextFieldExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Obscured Textfield')),
        body: Center(
          child: ObscuredTextFieldSample(labeltext:labeltext , onChanged:onChanged,),
        ),
      ),
    );
  }
}
*/


