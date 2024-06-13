import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8), // กำหนด padding รอบๆ ListView
        children: const [ // กำหนด children ให้กับ ListView ซึ่งเป็น const เพราะค่าเหล่านี้ไม่เปลี่ยนแปลง
          ListTile(
            title: Text("Arm"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.account_box), // ไอคอนที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            title: Text("098-274-9809"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.phone), // ไอคอนรูปโทรศัพท์ที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            title: Text("sitthaklaphanich@kmitl.ac.th"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.email), // ไอคอนรูปอีเมลที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            title: Text("Bangkok, Thailand"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.location_on), // ไอคอนรูปลูกศรที่จะแสดงด้านหน้าข้อความ
          ),
        ],
      ),
    );
  }
}
