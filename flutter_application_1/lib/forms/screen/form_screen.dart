import 'package:flutter/material.dart';
import 'package:flutter_application_1/forms/widgets/EmailTextfieldWidget.dart';
import 'package:flutter_application_1/forms/widgets/basic_textfield_widget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formkey = GlobalKey<FormState>();
  final _basicTextController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _formkey.currentState?.dispose();
    _basicTextController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Screen')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'This is a form screen with a basic text field.',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                BasicTextfieldWidget(
                  controller: _basicTextController,
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                  onChanged: (value) {
                    // Handle text change
                    print('User typed: $value');
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                EmailTextfieldWidget(
                  controller: _emailController,
                  onChanged: (value) {
                    print('Typed email: $value');
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print('Form is valid');
                      print('Name: ${_basicTextController.text}');
                      print('Email: ${_emailController.text}');
                      // You can proceed with submission logic here
                    } else {
                      print('Form is invalid');
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
