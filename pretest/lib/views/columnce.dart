import 'package:flutter/material.dart';

class Columnce_page extends StatelessWidget {
  const Columnce_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ครับ"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.book, size: 48),
            Icon(Icons.book, size: 144),
            Icon(Icons.book, size: 48),
          ],
        ),
      ),
    );
  }
}
