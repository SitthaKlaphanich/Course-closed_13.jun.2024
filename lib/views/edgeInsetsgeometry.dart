import 'package:flutter/material.dart';

// ignore: camel_case_types
class edge extends StatelessWidget {
  const edge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EdgeInsetsGeometry Example'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          margin: const EdgeInsets.all(
              20), // ใช้ EdgeInsets.all เพื่อกำหนดขอบรอบทั้ง 4 ด้าน
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ), // ใช้ EdgeInsets.symmetric เพื่อกำหนดขอบเขตแนวตั้งและแนวนอน
          color: Colors.blue,
          child: const Text(
            'EdgeInsetsGeometry Example',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
