import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  RxInt count = 0.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  increement() {
    count++;
  }

 checkemail(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return 'provide velid email id';
    }
    return null;
  }

  checkpass(String? value) {
    if (value!.length < 6) {
      return 'provide velid pass';
    }
    return null;
  }

  islogin() {
    if (!formKey.currentState!.validate()) {
      return false;
    }

    formKey.currentState!.save();
    print(email.text.toString());
    print(pass.text.toString());
  }
}
