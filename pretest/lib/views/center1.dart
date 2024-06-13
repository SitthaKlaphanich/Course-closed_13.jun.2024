import 'package:flutter/material.dart';

class Center1_page extends StatelessWidget {
  const Center1_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello ครับ'),
      ),
      body: Center(
        // heightFactor: 1,
        // widthFactor: 1,
        child: Container(color: Colors.amber, child: Text('Hello')),
      ),
    );
  }
}
