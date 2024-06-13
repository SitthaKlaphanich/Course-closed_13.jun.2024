import 'package:flutter/material.dart';

class ColumnMAS2_page extends StatelessWidget {
  const ColumnMAS2_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello ครับ"),
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
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
