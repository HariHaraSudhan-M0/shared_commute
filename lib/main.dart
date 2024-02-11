import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(child:Text("NIMBU",textAlign: TextAlign.center,style:TextStyle(color: Color.fromARGB(255, 24, 236, 208))),),
    );
  }
}