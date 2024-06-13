import 'package:flutter/material.dart';
import 'package:pretest/views/center.dart';
import 'package:pretest/views/column.dart';
import 'package:pretest/views/stateful.dart';
import 'package:pretest/views/stateless.dart';

class Landinghome extends StatefulWidget {
  const Landinghome({super.key});

  @override
  State<Landinghome> createState() => _LandinghomeState();
}

class _LandinghomeState extends State<Landinghome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลัก'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Center_page()),
                );
              },
              child: const Text('center'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Column_page()),
                );
              },
              child: const Text('column'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Stateful_page()),
                );
              },
              child: const Text('Stateful'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Stateless_page()),
                );
              },
              child: const Text('Stateless'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
