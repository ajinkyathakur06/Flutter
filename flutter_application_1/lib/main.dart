import 'package:flutter/material.dart';
import 'package:flutter_application_1/forms/screen/form_screen.dart';
import 'package:flutter_application_1/screens/identity_card_screen.dart';
import 'package:flutter_application_1/screens/stateful_widget.dart';
import 'package:flutter_application_1/screens/stateless_widget.dart';

// import 'package:flutter_application_1/screens/form_widget.dart ';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IdentityCardScreen(),
        '/stateless': (context) => const StatelessExampleScreen(),
        '/stateful': (context) => const StatefulExampleScreen(),
        '/form': (context) => const FormScreen(),
      },
    );
  }
}
