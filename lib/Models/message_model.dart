class MessageModel {
  late int id;
  late int senderId;
  late int receiverId;
  late String content;
  late String createdAt;
  late String updatedAt;

  MessageModel(
      {required this.id,
        required this.senderId,
        required this.receiverId,
        required this.content,
        required this.createdAt,
        required this.updatedAt});

  MessageModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    senderId = json['sender_id']??0;
    receiverId = json['receiver_id']??0;
    content = json['content']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sender_id'] = this.senderId;
    data['receiver_id'] = this.receiverId;
    data['content'] = this.content;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}