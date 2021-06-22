import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/domain/repository/news_repository.dart';
import 'package:google_news_clone/domain/usecase/base_usecase.dart';

class GetNewsUseCase extends UseCaseNoParams<List<NewsModel>> {
  NewsRepository newsRepository;
  GetNewsUseCase(this.newsRepository);
  @override
  Future<List<NewsModel>> action() {
    return newsRepository.getNews();
  }
}
