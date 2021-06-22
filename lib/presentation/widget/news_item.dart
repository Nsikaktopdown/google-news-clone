import 'package:flutter/material.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/data/news_model.dart';

class NewsItem extends StatelessWidget {
  final NewsModel model;
  NewsItem({required this.model});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.channel,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF717171)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      model.title,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                  ],
                )),
                SizedBox(
                  width: 20,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      model.image_url,
                      height: 100,
                      fit: BoxFit.cover,
                      width: 100,
                    ))
              ]),
          SizedBox(
            height: 5,
          ),
          Row(children: [
            Text(
              model.type + " .   " + model.time,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF717171),
                  fontSize: 12),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Divider(color: Colors.grey)
        ],
      ),
    );
  }
}
