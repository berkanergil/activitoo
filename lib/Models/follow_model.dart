class FollowModel {
  late int id;
  late int followerId;
  late int followedId;
  late int followStatus;
  late String createdAt;
  late String updatedAt;

  FollowModel(
      {required this.id,
        required this.followerId,
        required this.followedId,
        required this.followStatus,
        required this.createdAt,
        required this.updatedAt});

  FollowModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    followerId = json['follower_id']??0;
    followedId = json['followed_id']??0;
    followStatus = json['follow_status']??0;
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['follower_id'] = this.followerId;
    data['followed_id'] = this.followedId;
    data['follow_status'] = this.followStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}