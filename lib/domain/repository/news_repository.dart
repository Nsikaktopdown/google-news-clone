import 'package:google_news_clone/data/news_model.dart';

abstract class NewsRepository {
  Future<List<NewsModel>> getNews();
}
