import 'package:flutter/material.dart';

class doubleclass extends StatelessWidget {
  const doubleclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Example'),
      ),
      body: Center(
        child: Container(
          width: 200.0, // ใช้ double สำหรับกำหนดความกว้าง
          height: 150.0, // ใช้ double สำหรับกำหนดความสูง
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Double Example',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
