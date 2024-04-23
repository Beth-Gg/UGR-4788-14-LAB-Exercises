class postModel {
  String? title;
  String? description;

  postModel({this.title, this.description});

  postModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }
}
