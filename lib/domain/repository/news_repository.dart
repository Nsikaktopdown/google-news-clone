import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/domain/usecase/get_token.dart';

abstract class NewsRepository {
  Future<List<NewsModel>> getNews();
   Future<bool> getToken();
}
