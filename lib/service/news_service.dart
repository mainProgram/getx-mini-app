import 'package:get/get.dart';
import 'package:getx/model/newsapi_model.dart';

class NewsService extends GetConnect implements GetxService {

  Future<NewsApi> getNewsData() async{
    var response = await get("https://newsapi.org/v2/top-headlines?country=us&apiKey=96b59f80aa2e406e8ae8f2ee35775eea");
    print(response.body);
    return NewsApi.fromJson(response.body);
  }
}