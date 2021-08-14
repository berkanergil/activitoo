class CategoryModel {
  late int id;
  late String name;
  late String description;
  late String color;
  late String image;
  late String createdAt;
  late String updatedAt;
  int? eventCount;

  CategoryModel(
      {required this.id,
        required this.name,
        required this.description,
        required this.color,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
        this.eventCount
      });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    name = json['name']??"";
    description = json['description']??"";
    color = json['color']??"";
    image = json['image']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
    eventCount = json['event_count']??0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['color'] = this.color;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['event_count'] = this.eventCount;
    return data;
  }
}