import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TextDirectionExample(),
    );
  }
}

class TextDirectionExample extends StatelessWidget {
  const TextDirectionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextDirection Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'This text is LTR (English)',
                textDirection: TextDirection.ltr,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'هذا النص هو من اليمين إلى اليسار (عربي)',
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
