import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/presentation/basemodel.dart';
import 'package:google_news_clone/presentation/browser.dart';
import 'package:google_news_clone/presentation/news_viewmodel.dart';
import 'package:google_news_clone/presentation/widget/briefing.dart';
import 'package:google_news_clone/presentation/widget/news_item.dart';
import 'package:google_news_clone/presentation/widget/top_bar.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class NewsListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewsListPageState();
}

class NewsListPageState extends State {
  List<NewsModel> dummyNewsList = [];
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      dummyNewsList.add(NewsModel(
          channel: "CNN",
          title:
              "Facebook officially launches Live Audio Rooms and podcasts in the U.S.",
          type: "Technology",
          time: "2 hours ago",
          link: "",
          image_url: "facebook.png"));
    });
    newsViewModel.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewsViewModel>(
        create: (context) => newsViewModel,
        child: Consumer<NewsViewModel>(
            builder: (context, model, child) => Scaffold(
                body: SafeArea(
                    child: RefreshIndicator(
                        onRefresh: () => newsViewModel.getNews(),
                        child: SingleChildScrollView(
                            child: Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TopBar(),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    model.news.isEmpty
                                        ? Container()
                                        : Briefing(
                                            model: model
                                                .news[model.news.length - 1]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    model.state == ViewState.Loading
                                        ? Center(
                                            child: CircularProgressIndicator())
                                        : _newsList()
                                  ],
                                ))))))));
  }

  Widget _newsList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: newsViewModel.news.length,
        itemBuilder: (BuildContext context, int position) {
          return GestureDetector(
              onTap: () => {
                    Browser.launchBrowser(
                        link: newsViewModel.news[position].link)
                  },
              child: NewsItem(model: newsViewModel.news[position]));
        });
  }
}
