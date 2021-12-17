import 'package:get/get.dart';
import 'package:getxdemopro/productcotroller.dart';

class ProcontroolerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrpConroller());
  }
}
