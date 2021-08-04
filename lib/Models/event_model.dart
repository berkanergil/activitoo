class EventModel {
  int? id;
  int? placeId;
  int? categoryId;
  String? title;
  String? description;
  String? image;
  int? price;
  String? startDateTime;
  String? endDateTime;
  String? createdAt;
  String? updatedAt;

  EventModel(
      {this.id,
        this.placeId,
        this.categoryId,
        this.title,
        this.description,
        this.image,
        this.price,
        this.startDateTime,
        this.endDateTime,
        this.createdAt,
        this.updatedAt});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    placeId = json['place_id'];
    categoryId = json['category_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['place_id'] = this.placeId;
    data['category_id'] = this.categoryId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    data['start_date_time'] = this.startDateTime;
    data['end_date_time'] = this.endDateTime;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}