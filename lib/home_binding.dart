import 'package:get/get.dart';

import 'controller/HomeController.dart';
import 'controller/second_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() =>SecondController(), fenix: true);
  }
}