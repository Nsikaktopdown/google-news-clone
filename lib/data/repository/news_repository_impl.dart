import 'package:google_news_clone/data/datasource/news_remote_datasource.dart';
import 'package:google_news_clone/data/local/sharedpreference.dart';
import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/domain/repository/news_repository.dart';
import 'package:google_news_clone/domain/usecase/get_token.dart';

class NewsRepositoryImpl extends NewsRepository {
  NewsRemoteDatasource newsRemoteDatasource;
  SharedPreference sharedPreference;
  NewsRepositoryImpl(this.newsRemoteDatasource, this.sharedPreference);

/**
 * fetch Basic auth token from HarperDB
 */
  @override
  Future<bool> getToken() {
    return newsRemoteDatasource
        .getToken()
        .then((value) => sharedPreference.set("token", value));
  }

/**
 * Fetch news
 */
  @override
  Future<List<NewsModel>> getNews() async {
    return newsRemoteDatasource
        .getNews(await sharedPreference.getString("token", "null"));
  }
}
