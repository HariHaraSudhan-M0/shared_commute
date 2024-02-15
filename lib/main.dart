import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'SUBMIT';
  int currentIndex = 0;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'you have submited';
                  });
                },
                child: Text(buttonName)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonName = 'you have submited';
                });
              },
              child: Text(buttonName),
            )
          ],
        )),
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
            ),
            BottomNavigationBarItem(label:'help',
            icon:Icon(Icons.home_max)
             )
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
