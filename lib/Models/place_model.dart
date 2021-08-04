class PlaceModel {
  int? id;
  int? actorId;
  int? regionId;
  String? name;
  String? image;
  String? bImage;
  String? msisdn;
  String? email;
  String? description;
  int? starCount;
  String? address;
  String? lon;
  String? lat;
  String? createdAt;
  String? updatedAt;

  PlaceModel(
      {this.id,
        this.actorId,
        this.regionId,
        this.name,
        this.image,
        this.bImage,
        this.msisdn,
        this.email,
        this.description,
        this.starCount,
        this.address,
        this.lon,
        this.lat,
        this.createdAt,
        this.updatedAt});

  PlaceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    actorId = json['actor_id'];
    regionId = json['region_id'];
    name = json['name'];
    image = json['image'];
    bImage = json['b_image'];
    msisdn = json['msisdn'];
    email = json['email'];
    description = json['description'];
    starCount = json['star_count'];
    address = json['address'];
    lon = json['lon'];
    lat = json['lat'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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