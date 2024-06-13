import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Custom Widget'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is my custom widget!',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('test');
              },
              child: const Text('Click Me'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("กดปุมเพื่อทดลอง"),
            )
          ],
        )));
  }
}
