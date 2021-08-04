class FollowModel {
  int? id;
  int? followerId;
  int? followedId;
  int? followStatus;
  String? createdAt;
  String? updatedAt;

  FollowModel(
      {this.id,
        this.followerId,
        this.followedId,
        this.followStatus,
        this.createdAt,
        this.updatedAt});

  FollowModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    followerId = json['follower_id'];
    followedId = json['followed_id'];
    followStatus = json['follow_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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