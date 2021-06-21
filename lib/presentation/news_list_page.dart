import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/presentation/widget/briefing.dart';
import 'package:google_news_clone/presentation/widget/top_bar.dart';

class NewsListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewsListPageState();
}

class NewsListPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                       Briefing(),
                        SizedBox(
                          height: 10,
                        ),
                        _newsList()
                      ],
                    )))));
  }

  

  Widget _newsItem() {
    return 
      }

  Widget _newsList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context, int position) {
          return GestureDetector(onTap: () => {}, child: _newsItem());
        });
  }
}
