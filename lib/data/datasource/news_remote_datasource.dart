import 'package:dio/dio.dart';
import 'package:google_news_clone/config/service.dart';
import 'package:google_news_clone/data/news_model.dart';

abstract class NewsRemoteDatasource extends Service {
  NewsRemoteDatasource(Dio dioClient) : super(dioClient);
  Future<List<NewsModel>> getNews();
}

class NewsRemoteDatasourceImpl extends NewsRemoteDatasource{
  NewsRemoteDatasourceImpl(Dio dioClient) : super(dioClient);
  @override
  Future<List<NewsModel>> getNews() {
    // TODO: implement getNews
    throw UnimplementedError();
  }
}