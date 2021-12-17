// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemopro/mycontroller.dart';
import 'package:getxdemopro/productcotroller.dart';

class Second extends GetView<PrpConroller> {
  final Mycontroller c = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isloading.value
            ? const Center(child: CircularProgressIndicator())
            : Form(
                key: c.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Total count :${c.count}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(onPressed: () {
                        c.increement();
                      }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text('Total count :${controller.mymodel.value.id}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: c.email,
                        validator: (v) => c.checkemail(v),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter Name',
                            hintText: 'Enter Your Name'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: c.pass,
                        validator: (v) => c.checkpass(v),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter pass',
                            hintText: 'Enter Your pass'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {
                          c.islogin();
                        },
                        child: const Text('Login'),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )));
  }
}
// class Second extends StatelessWidget {
//   Second({Key? key}) : super(key: key);

//   final Mycontroller c = Get.put(Mycontroller());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Obx(() => c.isloading.value
//             ? CircularProgressIndicator()
//             : Column(
//                 children: [
//                   Text('Total count :${c.count}'),
//                   RaisedButton(onPressed: () {
//                     c.increement();
//                   }),
//                   Text('Total count :${c.mymodel.id}'),
//                 ],
//               )));
//   }
// }
