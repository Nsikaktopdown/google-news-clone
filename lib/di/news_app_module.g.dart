// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_app_module.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$NewsAppModule extends NewsAppModule {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<NewsRemoteDatasource>(
        (c) => NewsRemoteDatasourceImpl(Dio()));
    container.registerFactory<NewsRepository>(
        (c) => NewsRepositoryImpl(c<NewsRemoteDatasource>()));
    container.registerSingleton((c) => GetNewsUseCase(c<NewsRepository>()));
  }
}
