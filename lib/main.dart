import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              print('HELLOOO');
            }, child: Text('SUBMIT'))),
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
