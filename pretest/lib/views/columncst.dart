import 'package:flutter/material.dart';

class Columncst_page extends StatelessWidget {
  const Columncst_page({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
