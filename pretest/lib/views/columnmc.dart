import 'package:flutter/material.dart';

class Columnmc_page extends StatelessWidget {
  const Columnmc_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ครับ"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
