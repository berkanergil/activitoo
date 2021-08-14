class ArtistModel {
  late int id;
  late int actorId;
  late String image;
  late String description;
  late String sex;
  late String dob;
  late String repertory;
  late String createdAt;
  late String updatedAt;
  late int rightId;
  late String username;
  late String name;
  late String surname;
  late String email;
  late String apiToken;
  late String rememberToken;
  late String password;
  late String msisdn;

  ArtistModel(
      {required this.id,
        required this.actorId,
        required this.image,
        required this.description,
        required this.sex,
        required this.dob,
        required this.repertory,
        required this.createdAt,
        required this.updatedAt,
        required this.rightId,
        required this.username,
        required this.name,
        required this.surname,
        required this.email,
        required this.apiToken,
        required this.rememberToken,
        required this.password,
        required this.msisdn});

  ArtistModel.fromJson(Map<String, dynamic> json) {
    id = json['id']??0;
    actorId = json['actor_id']??0;
    image = json['image']??"";
    description = json['description']??"";
    sex = json['sex']??"";
    dob = json['dob']??"";
    repertory = json['repertory']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
    rightId = json['right_id']??0;
    username = json['username']??"";
    name = json['name']??"";
    surname = json['surname']??"";
    email = json['email']??"";
    apiToken = json['api_token']??"";
    rememberToken = json['remember_token']??"";
    password = json['password']??"";
    msisdn = json['msisdn']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['actor_id'] = this.actorId;
    data['image'] = this.image;
    data['description'] = this.description;
    data['sex'] = this.sex;
    data['dob'] = this.dob;
    data['repertory'] = this.repertory;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['right_id'] = this.rightId;
    data['username'] = this.username;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['api_token'] = this.apiToken;
    data['remember_token'] = this.rememberToken;
    data['password'] = this.password;
    data['msisdn'] = this.msisdn;
    return data;
  }
}