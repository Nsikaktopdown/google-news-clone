import 'package:dio/dio.dart';
import 'package:google_news_clone/data/datasource/news_remote_datasource.dart';
import 'package:google_news_clone/data/local/sharedpreference.dart';
import 'package:google_news_clone/data/repository/news_repository_impl.dart';
import 'package:google_news_clone/domain/repository/news_repository.dart';
import 'package:google_news_clone/domain/usecase/get_news.dart';
import 'package:kiwi/kiwi.dart';

part 'news_app_module.g.dart';

abstract class NewsAppModule {
  void setup() {
    _configure();
  }

  @Register.factory(NewsRemoteDatasource, from: NewsRemoteDatasourceImpl)
  @Register.factory(NewsRepository, from: NewsRepositoryImpl)
  @Register.singleton(GetNewsUseCase)
  @Register.singleton(Dio)
  @Register.singleton(SharedPreference)
  void _configure();
}

NewsAppModule newsAppModule() => _$NewsAppModule();
