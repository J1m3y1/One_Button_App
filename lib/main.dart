import 'package:flutter/material.dart';

void main() {
  runApp(const OneButtonApp());
}

class OneButtonApp extends StatelessWidget {
  const OneButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Button',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OneButtonPage(),
    );
  }
}

/// A widget with a single button that does nothing when pressed.
class OneButtonPage extends StatelessWidget {
  const OneButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Press me'),
        ),
      ),
    );
  }
}
