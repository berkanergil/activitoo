class PlaceModel {
  late int id;
  late int actorId;
  late int regionId;
  late String name;
  late String image;
  late String bImage;
  late String msisdn;
  late String email;
  late String description;
  late int starCount;
  late String address;
  late String lon;
  late String lat;
  late String createdAt;
  late String updatedAt;

  PlaceModel(
      {required this.id,
        required this.actorId,
        required this.regionId,
        required this.name,
        required this.image,
        required this.bImage,
        required this.msisdn,
        required this.email,
        required this.description,
        required this.starCount,
        required this.address,
        required this.lon,
        required this.lat,
        required this.createdAt,
        required this.updatedAt});

  PlaceModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    actorId = json['actor_id']??0;
    regionId = json['region_id']??0;
    name = json['name']??"";
    image = json['image']??"";
    bImage = json['b_image']??"";
    msisdn = json['msisdn']??"";
    email = json['email']??"";
    description = json['description']??"";
    starCount = json['star_count']??0;
    address = json['address']??"";
    lon = json['lon']??"";
    lat = json['lat']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['actor_id'] = this.actorId;
    data['region_id'] = this.regionId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['b_image'] = this.bImage;
    data['msisdn'] = this.msisdn;
    data['email'] = this.email;
    data['description'] = this.description;
    data['star_count'] = this.starCount;
    data['address'] = this.address;
    data['lon'] = this.lon;
    data['lat'] = this.lat;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}