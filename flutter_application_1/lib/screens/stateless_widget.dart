import 'package:flutter/material.dart';

class StatelessExampleScreen extends StatelessWidget {
  const StatelessExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless Widget")),
      body: const Center(
        child: Text(
          'This is a Stateless Widget.\nIt doesn\'t change!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
