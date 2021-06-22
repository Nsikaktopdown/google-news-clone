import 'package:flutter/material.dart';
import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/domain/repository/news_repository.dart';
import 'package:google_news_clone/presentation/basemodel.dart';
import 'package:kiwi/kiwi.dart';

class NewsViewModel extends BaseModel {
  final repository = KiwiContainer().resolve<NewsRepository>();
  List<NewsModel> news = [];

/**
 * fetch news from the repository for the UI
 */
  Future<void> getNews() async {
    try {
      setState(ViewState.Loading);
      var response = await repository.getNews();
      news.clear();
      news.addAll(response);
      notifyListeners();
      setState(ViewState.Success);
    } catch (error) {
      setState(ViewState.Failed);
    }
  }
}
