class NewsModel {
  String channel = "";
  String title = "";
  String type = "";
  String time = "";
  String image_url = "";
  String link = "";

  NewsModel(
      {required this.channel,
      required this.title,
      required this.type,
      required this.time,
      required this.link,
      required this.image_url});
}
