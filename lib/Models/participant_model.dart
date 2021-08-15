class ParticipantModel {
  late int id;
  late int eventId;
  late int actorId;
  late int anonStatus;
  late String createdAt;
  late String updatedAt;

  ParticipantModel(
      {required this.id,
        required this.eventId,
        required this.actorId,
        required this.anonStatus,
        required this.createdAt,
        required this.updatedAt});

  ParticipantModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    eventId = json['event_id']??0;
    actorId = json['actor_id']??0;
    anonStatus = json['anon_status']??0;
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['event_id'] = this.eventId;
    data['actor_id'] = this.actorId;
    data['anon_status'] = this.anonStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}