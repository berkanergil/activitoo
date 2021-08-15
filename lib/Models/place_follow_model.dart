class PlaceFollowModel {
  late int id;
  late int followerId;
  late int placeId;
  late String createdAt;
  late String updatedAt;

  PlaceFollowModel(
      {required this.id, required this.followerId, required this.placeId, required this.createdAt, required this.updatedAt});

  PlaceFollowModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    followerId = json['follower_id']??0;
    placeId = json['place_id']??0;
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['follower_id'] = this.followerId;
    data['place_id'] = this.placeId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}