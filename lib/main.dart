import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemopro/mycontroller.dart';
import 'package:getxdemopro/probinding.dart';
import 'package:getxdemopro/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  Mycontroller mycontroller = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GetX<Mycontroller>(
            builder: (_) => Text(
              'container${mycontroller.count}',
              style: TextStyle(color: Colors.pink),
            ),
          ),
          Obx(() => Text('Total count :${mycontroller.count}')),
          RaisedButton(onPressed: () {
            mycontroller.increement();
          }),
          RaisedButton(
              child: Text('Second'),
              onPressed: () {
                Get.to(Second(), binding: ProcontroolerBinding());
              })
        ],
      ),
    );
  }
}
