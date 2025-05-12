import 'package:get/get.dart';

class HomeController extends GetxController {
  String name = "Fama";

  var count = 0.obs;
  void increment() {
    count.value++ ;
    // update() ;
  }
}