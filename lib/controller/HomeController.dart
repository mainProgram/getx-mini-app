import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx/model/newsapi_model.dart';
import 'package:getx/service/news_service.dart';

class HomeController extends GetxController {
  String name = "";
  RxInt count = 0.obs;
  final GetStorage _box = GetStorage();

  void increment() {
    count.value++ ;
  }

  void displayName() {
    name = "Jane";
    _box.write("name", name);
    update();
  }

  void getSavedName() {
    String? name = _box.read("name");
    print(name);
    update();
  }

  void deleteSavedName() {
    _box.remove("name");
    print("Saved name deleted");
    update();
  }

  @override
  void onInit() {
    getNews();
    //When u open the page
    print("onInit");
    super.onInit();
  }

  NewsApi? newsApi;
  getNews() async{
    newsApi = await NewsService().getNewsData();
    update();
    print("The data = $newsApi");
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