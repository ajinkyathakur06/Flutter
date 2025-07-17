import 'package:flutter/material.dart';

class IdentityCardScreen extends StatefulWidget {
  const IdentityCardScreen({super.key});

  @override
  State<IdentityCardScreen> createState() => _IdentityCardScreenState();
}

class _IdentityCardScreenState extends State<IdentityCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Identity Card')),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Image.asset('assets/images/20240815_072319.jpg'),
            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Shri_Narendra_Modi%2C_Prime_Minister_of_India_%283x4_cropped%29.jpg/640px-Shri_Narendra_Modi%2C_Prime_Minister_of_India_%283x4_cropped%29.jpg",
            ),
            const Text(
              'Identity Card',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'This is your identity card.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
