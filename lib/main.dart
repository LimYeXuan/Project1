import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void doSomething() {
    debugPrint('bla bla');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.no_food),
          ),
          backgroundColor: Colors.blue,
          title: const Text('Lab 1'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height:20),Text('Lol this is hard I want to go farming'),
              CircleAvatar(backgroundColor: Colors.blue, radius: 50, backgroundImage: AssetImage('assets/image/liminaa.jpg'),),
            ],
          ),
        ),
      ),
    );
  }
}