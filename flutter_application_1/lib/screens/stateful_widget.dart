import 'package:flutter/material.dart';

class StatefulExampleScreen extends StatefulWidget {
  const StatefulExampleScreen({super.key});

  @override
  State<StatefulExampleScreen> createState() => _StatefulExampleScreenState();
}

class _StatefulExampleScreenState extends State<StatefulExampleScreen> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Button pressed:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$counter times',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: increment,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
