import 'package:flutter/material.dart';


class ListviewGlobalKey extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListviewGlobalKey> {
  // สร้าง GlobalKey สำหรับ ListView
  final GlobalKey<_MyHomePageState> _listViewKey = GlobalKey<_MyHomePageState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "flutter test",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        key: _listViewKey, // กำหนด GlobalKey ให้กับ ListView
        padding: const EdgeInsets.all(8), // กำหนด padding รอบๆ ListView
        children: const [ // กำหนด children ให้กับ ListView ซึ่งเป็น const เพราะค่าเหล่านี้ไม่เปลี่ยนแปลง
          ListTile(
            key: ValueKey('item1'), // ใช้ ValueKey สำหรับไอเท็มแต่ละรายการ
            title: Text("Arm"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.account_box), // ไอคอนที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            key: ValueKey('item2'), // ใช้ ValueKey สำหรับไอเท็มแต่ละรายการ
            title: Text("098-274-9809"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.phone), // ไอคอนรูปโทรศัพท์ที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            key: ValueKey('item3'), // ใช้ ValueKey สำหรับไอเท็มแต่ละรายการ
            title: Text("sitthaklaphanich@kmitl.ac.th"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.email), // ไอคอนรูปอีเมลที่จะแสดงด้านหน้าข้อความ
          ),
          ListTile(
            key: ValueKey('item4'), // ใช้ ValueKey สำหรับไอเท็มแต่ละรายการ
            title: Text("Bangkok, Thailand"), // ข้อความที่จะแสดงใน ListTile
            leading: Icon(Icons.location_on), // ไอคอนรูปลูกศรที่จะแสดงด้านหน้าข้อความ
          ),
        ],
      ),
    );
  }
}
