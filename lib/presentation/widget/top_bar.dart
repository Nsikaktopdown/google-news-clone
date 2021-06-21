import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_news_clone/config/constant.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: SvgPicture.asset(Constant.SVG_DIR + "search-line-.svg")),
        Container(
            child: SvgPicture.asset(
          Constant.SVG_DIR + "Google-News.svg",
          height: 20,
        )),
        Container(
            child:
                SvgPicture.asset(Constant.SVG_DIR + "account-circle-fill.svg"))
      ],
    ));
  }
}
