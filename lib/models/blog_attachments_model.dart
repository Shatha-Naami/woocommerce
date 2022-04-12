class BlogAttachmentsModel {
  int? id;
  String? name;
  String? url;

  BlogAttachmentsModel({this.id, this.name, this.url});

  BlogAttachmentsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
  }
}
