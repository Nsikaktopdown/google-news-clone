import 'package:google_news_clone/domain/repository/news_repository.dart';
import 'package:google_news_clone/domain/usecase/base_usecase.dart';
import 'package:equatable/equatable.dart';

class GetTokenUseCase extends UseCaseNoParams<bool> {
  NewsRepository newsRepository;
  GetTokenUseCase(this.newsRepository);
  @override
  Future<bool> action() {
    return newsRepository.getToken();
  }
}

class TokenParams extends Equatable {
  String username;
  String password;
  TokenParams({required this.username, required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [username, password];
}
