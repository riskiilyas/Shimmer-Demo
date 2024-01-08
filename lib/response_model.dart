class ResponseModel {
  ResponseModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory ResponseModel.fromJson(dynamic json) {
    return ResponseModel(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
}
