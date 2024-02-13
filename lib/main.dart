import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName='SUBMIT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared commute'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
            child: ElevatedButton(onPressed: () {
              setState(() {
                buttonName='you have submited';
              });
            }, child: Text(buttonName))),
        backgroundColor: const Color.fromARGB(255, 235, 184, 244),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          items: const [
            BottomNavigationBarItem(
              label: 'home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: 'favorite',
              icon: Icon(Icons.favorite),
            )
          ],
        ),
      ),
    );
  }
}
