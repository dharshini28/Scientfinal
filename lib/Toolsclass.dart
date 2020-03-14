class Toolsclass {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Toolsclass({this.albumId, this.id, this.title,this.url,this.thumbnailUrl});

  factory Toolsclass.fromJson(Map<String, dynamic> json) {
    return Toolsclass(
      albumId: json['albumId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
