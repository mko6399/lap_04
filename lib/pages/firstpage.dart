import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lap_04/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String groupfood = "";
  bool staregg = false;
  bool staregg1 = false;
  bool staregg2 = false;
  bool staregg3 = false;
  bool staregg4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Input Winget"),
      ),
      body: Column(
        children: [
          RadioListTile(
              activeColor: Colors.redAccent,
              selectedTileColor: Colors.amber,
              title: Text("งูเหลือมส้ม"),
              subtitle: Text("50 บาท"),
              value: "งูเหลือมส้ม",
              groupValue: groupfood,
              onChanged: (value) {
                setState(() {
                  //ใช้ก็ต่อเมื่อมีการเปลี่ยนแปลงค่าตลอดต้องนำมาใช้
                  groupfood = value!;
                });
                print(groupfood);
              }),

          // RadioListTile(
          //     activeColor: Colors.redAccent,
          //     selectedTileColor: Colors.amber,
          //     title: Text("คั้วแลน"),
          //     subtitle: Text("1500 บาท"),
          //     value: "คั้วแลน",
          //     groupValue: groupfood,
          //     onChanged: (value) {
          //       setState(() {
          //         //ใช้ก็ต่อเมื่อมีการเปลี่ยนแปลงค่าตลอดต้องนำมาใช้
          //         groupfood = value!;
          //       });
          //       print(groupfood);
          //     }),
          // RadioListTile(
          //     activeColor: Colors.redAccent,
          //     selectedTileColor: Colors.amber,
          //     title: Text("แกงแมว"),
          //     subtitle: Text("502 บาท"),
          //     value: "แกงแมว",
          //     groupValue: groupfood,
          //     onChanged: (value) {
          //       setState(() {
          //         //ใช้ก็ต่อเมื่อมีการเปลี่ยนแปลงค่าตลอดต้องนำมาใช้
          //         groupfood = value!;
          //       });
          //       print(groupfood);
          //     }),
          // RadioListTile(
          //     activeColor: Colors.redAccent,
          //     selectedTileColor: Colors.amber,
          //     title: Text("ต้มกระดูยุง"),
          //     subtitle: Text("500 บาท"),
          //     value: "ต้มกระดูยุง",
          //     groupValue: groupfood,
          //     onChanged: (value) {
          //       setState(() {
          //         //ใช้ก็ต่อเมื่อมีการเปลี่ยนแปลงค่าตลอดต้องนำมาใช้
          //         groupfood = value!;
          //       });
          //       print(groupfood);
          //     }),
          // RadioListTile(
          //     activeColor: Colors.redAccent,
          //     selectedTileColor: Colors.amber,
          //     title: Text("เกาเหลาหมา"),
          //     subtitle: Text("15 บาท"),
          //     value: "เกาเหลาหมา",
          //     groupValue: groupfood,
          //     onChanged: (value) {
          //       setState(() {
          //         //ใช้ก็ต่อเมื่อมีการเปลี่ยนแปลงค่าตลอดต้องนำมาใช้
          //         groupfood = value!;
          //       });
          //       print(groupfood);
          //     }),

          Divider(),
          Text(
            "checkbox",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.redAccent,
              title: Text("ใข่ดาว"),
              value: staregg,
              onChanged: (value) {
                setState(() {
                  staregg = value!;
                });
                print(staregg);
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("ดาว"),
              value: staregg1,
              onChanged: (value) {
                setState(() {
                  staregg1 = value!;
                });
                print(staregg1);
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("ใข่ดาว"),
              value: staregg2,
              onChanged: (value) {
                setState(() {
                  staregg2 = value!;
                });
                print(staregg2);
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("ใข่เจียว"),
              value: staregg3,
              onChanged: (value) {
                setState(() {
                  staregg3 = value!;
                });
                print(staregg3);
              }),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/twopage');
            },
            child: Text('Change pages two'),
          ),
        ],
      ),
    );
  }
}
