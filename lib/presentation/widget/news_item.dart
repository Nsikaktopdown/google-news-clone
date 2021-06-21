import 'package:flutter/material.dart';
import 'package:google_news_clone/config/constant.dart';

class NewsItem extends StatelessWidget{
  final 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CNN",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Color(0xFF717171)),
                ),
                Text(
                  "Facebook officially launches Live Audio Rooms and podcasts in the U.S.",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ],
            )),
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  Constant.PNG_DIR + "facebook.png",
                  height: 100,
                  fit: BoxFit.cover,
                  width: 100,
                ))
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "Headline . 10 hours ago",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF717171),
                  fontSize: 12),
            ),
          ]),
        ],
      ),
    );

  }
}