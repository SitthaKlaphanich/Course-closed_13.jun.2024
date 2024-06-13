import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScrollPhysicsExample(),
    );
  }
}

class ScrollPhysicsExample extends StatelessWidget {
  const ScrollPhysicsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollPhysics Example'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(50, (index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }),
        ),
      ),
    );
  }
}
