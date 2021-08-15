class EventModel {
  late int id;
  late int placeId;
  late int categoryId;
  late String title;
  late String description;
  late String image;
  late int price;
  late String startDateTime;
  late String endDateTime;
  late String createdAt;
  late String updatedAt;
  late int activeStatus;
  late String currency;

  EventModel(
      {required this.id,
        required this.placeId,
        required this.categoryId,
        required this.title,
        required this.description,
        required this.image,
        required this.price,
        required this.startDateTime,
        required this.endDateTime,
        required this.createdAt,
        required this.updatedAt,
        required this.activeStatus,
        required this.currency});

  EventModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    placeId = json['place_id']??0;
    categoryId = json['category_id']??0;
    title = json['title']??"";
    description = json['description']??"";
    image = json['image']??"";
    price = json['price']??0;
    startDateTime = json['start_date_time']??"";
    endDateTime = json['end_date_time']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
    activeStatus = json['active_status']??0;
    currency = json['currency']??"";

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
    data['active_status'] = this.activeStatus;
    data['currency'] = this.currency;
    return data;
  }
}