import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SecondController extends GetxController {
  String name = "";
  RxInt count = 0.obs;

  void increment() {
    count.value++ ;
  }

  void displayName() {
    name = "Jane";
    update();
  }

  @override
  void onInit() {
    //When u open the page
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    //When the controller is ready
    print("ready");
    super.onReady();
  }

  @override
  void onClose() {
    //When the controller is closed
    print("close");
    super.onClose();
  }
  // void displayName(String name) {
  //   this.name = name;
  // }
}