class CommentModel {
  int? id;
  int? placeId;
  int? actorId;
  String? content;
  int? starCount;
  String? createdAt;
  String? updatedAt;

  CommentModel(
      {this.id,
        this.placeId,
        this.actorId,
        this.content,
        this.starCount,
        this.createdAt,
        this.updatedAt});

  CommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placeId = json['place_id'];
    actorId = json['actor_id'];
    content = json['content'];
    starCount = json['star_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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