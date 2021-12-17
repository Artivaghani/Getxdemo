import 'package:get/get.dart';
import 'package:getxdemopro/apiservices.dart';
import 'package:getxdemopro/mymodel.dart';

class PrpConroller extends GetxController {
  Rx<MyModel> mymodel = MyModel().obs;
  RxBool isloading = true.obs;

  @override
  onInit() {
    fatchdata();
  }

  fatchdata() async {
    try {
      isloading(true);
      var product = await Apiservice.fatchdata();
      mymodel(MyModel.fromJson(product));
    } finally {
      isloading(false);
    }
  }
}
