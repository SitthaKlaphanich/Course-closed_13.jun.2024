import 'package:flutter/material.dart';

// ignore: camel_case_types
class intclass extends StatelessWidget {
  const intclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Integer Class Example'),
      ),
      body: const Center(
        child: Text(
          'My favorite numbers are 42 44',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
