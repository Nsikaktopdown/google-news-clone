import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_news_clone/config/constant.dart';
import 'package:google_news_clone/data/news_model.dart';
import 'package:google_news_clone/presentation/browser.dart';

class Briefing extends StatelessWidget {
  NewsModel model;
  Briefing({required this.model});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Briefing",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                Text(
                  "Top stories right now",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF717171)),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: () {
              Browser.launchBrowser(link: model.link);
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: model.image_url,
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      )),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                )))
      ],
    ));
  }
}
