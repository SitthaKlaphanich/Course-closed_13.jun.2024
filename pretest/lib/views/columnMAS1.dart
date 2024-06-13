import 'package:flutter/material.dart';

class ColumnMAS1_page extends StatelessWidget {
  const ColumnMAS1_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ครับ"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
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
