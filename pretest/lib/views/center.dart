import 'package:flutter/material.dart';
import 'package:pretest/views/center1.dart';
import 'package:pretest/views/center2.dart';
import 'package:pretest/views/center3.dart';

class Center_page extends StatelessWidget {
  const Center_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('center_page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Center1_page()),
                );
              },
              child: const Text('center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Center2_page()),
                );
              },
              child: const Text('center with widthFactor'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Center3_page()),
                );
              },
              child: const Text('center with heightFactor'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
