import 'package:dio/dio.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/config/secret.dart';
import 'package:google_news_clone/config/service.dart';
import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/domain/usecase/get_token.dart';

abstract class NewsRemoteDatasource extends Service {
  NewsRemoteDatasource(Dio dioClient) : super(dioClient);
  Future<String> getToken();
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

  @override
  Future<String> getToken() async {
    try {
      var response = await dioClient.post(Constant.API_URL, data: {
        "operation": "create_authentication_tokens",
        "username": Secret.username,
        "password": Secret.password
      });
      return response.data['operation_token'];
    } on DioError catch (error) {
      throw error.response!;
    }
  }
}
