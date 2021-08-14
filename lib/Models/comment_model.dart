class CommentModel {
  late int id;
  late int placeId;
  late int actorId;
  late String content;
  late int starCount;
  late String createdAt;
  late String updatedAt;

  CommentModel(
      {required this.id,
        required this.placeId,
        required this.actorId,
        required this.content,
        required this.starCount,
        required this.createdAt,
        required this.updatedAt});

  CommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    placeId = json['place_id']??0;
    actorId = json['actor_id']??0;
    content = json['content']??"";
    starCount = json['star_count']??0;
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['place_id'] = this.placeId;
    data['actor_id'] = this.actorId;
    data['content'] = this.content;
    data['star_count'] = this.starCount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}