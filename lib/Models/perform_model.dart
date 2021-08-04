class PerformModel {
  int? id;
  int? eventId;
  int? actorId;
  int? acceptStatus;
  String? createdAt;
  String? updatedAt;

  PerformModel(
      {this.id,
        this.eventId,
        this.actorId,
        this.acceptStatus,
        this.createdAt,
        this.updatedAt});

  PerformModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventId = json['event_id'];
    actorId = json['actor_id'];
    acceptStatus = json['accept_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['event_id'] = this.eventId;
    data['actor_id'] = this.actorId;
    data['accept_status'] = this.acceptStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}