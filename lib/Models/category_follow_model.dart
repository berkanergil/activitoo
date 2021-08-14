class CategoryFollowModel {
  late int id;
  late int followerId;
  late int categoryId;
  late String createdAt;
  late String updatedAt;

  CategoryFollowModel(
      {required this.id,
        required this.followerId,
        required this.categoryId,
        required this.createdAt,
        required this.updatedAt});

  CategoryFollowModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    followerId = json['follower_id']??0;
    categoryId = json['category_id']??0;
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['follower_id'] = this.followerId;
    data['category_id'] = this.categoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}