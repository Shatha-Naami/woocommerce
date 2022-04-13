import 'blog_model.dart';

class BlogAttachmentsModel {
  final int? id;
  final Guid? title;
  final String? sourceUrl;

  BlogAttachmentsModel({this.id, this.title, this.sourceUrl});

  factory BlogAttachmentsModel.fromJson(Map<String, dynamic> json) =>
      BlogAttachmentsModel(
        id: json['id'],
        title: Guid.fromJson(json["title"]),
        sourceUrl: json['source_url'],
      );
}
