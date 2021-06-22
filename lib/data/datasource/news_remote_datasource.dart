import 'package:dio/dio.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/config/service.dart';
import 'package:google_news_clone/data/news_model.dart';

abstract class NewsRemoteDatasource extends Service {
  NewsRemoteDatasource(Dio dioClient) : super(dioClient);
  Future<List<NewsModel>> getNews(String token);
}

class NewsRemoteDatasourceImpl extends NewsRemoteDatasource {
  NewsRemoteDatasourceImpl(Dio dioClient) : super(dioClient);
  @override
  Future<List<NewsModel>> getNews(String token) async {
    try {
      dioClient.options.headers['Authorization'] = "Bearer " + token;
      var response = await dioClient.post(Constant.API_URL,
          data: {"operation": "sql", "sql": "SELECT * FROM dev.news"});
      return List<NewsModel>.from(
          response.data.map((x) => NewsModel.fromJson(x)));
    } on DioError catch (error) {
      throw error.response!;
    }
  }
}
