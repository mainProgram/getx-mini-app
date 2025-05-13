import 'article_model.dart';

class NewsApi {
  String status = '';
  int totalResults = 0;
  List<Article> articles = [];

  NewsApi({required this.status, required this.totalResults, required this.articles});

  NewsApi.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? '';
    totalResults = json['totalResults'] ?? 0;
    articles = [];
    if (json['articles'] != null) {
      json['articles'].forEach((article) {
        articles.add(Article.fromJson(article));
      });
    }
  }
}