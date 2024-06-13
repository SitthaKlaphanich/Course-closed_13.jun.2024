import 'package:flutter/material.dart';

class Columnms_page extends StatelessWidget {
  const Columnms_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ครับ"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.book, size: 48),
            Icon(Icons.book, size: 48),
            Icon(Icons.book, size: 48),
          ],
        ),
      ),
    );
  }
}
