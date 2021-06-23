import 'package:flutter/material.dart';
import 'package:google_news_clone/config/constant.dart';

class Briefing extends StatelessWidget {
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
        ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              Constant.PNG_DIR + "top-story.jpeg",
              height: 170,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ))
      ],
    ));
  }
}
