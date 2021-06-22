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

  NewsModel.fromJson(Map<String, dynamic> json)
      : channel = json['channel'],
        title = json['title'],
        type = json['type'],
        time = json['time'],
        link = json['link'],
        image_url = json['image_url'];
}
