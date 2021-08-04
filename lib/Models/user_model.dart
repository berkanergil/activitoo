class UserModel {
  int? id;
  int? actorId;
  String? image;
  String? description;
  String? sex;
  String? dob;
  int? anonStatus;
  int? secretStatus;
  String? createdAt;
  String? updatedAt;
  int? rightId;
  String? username;
  String? name;
  String? surname;
  String? email;
  String? apiToken;
  String? rememberToken;
  String? password;
  String? msisdn;

  UserModel(
      {this.id,
        this.actorId,
        this.image,
        this.description,
        this.sex,
        this.dob,
        this.anonStatus,
        this.secretStatus,
        this.createdAt,
        this.updatedAt,
        this.rightId,
        this.username,
        this.name,
        this.surname,
        this.email,
        this.apiToken,
        this.rememberToken,
        this.password,
        this.msisdn});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    actorId = json['actor_id'];
    image = json['image'];
    description = json['description'];
    sex = json['sex'];
    dob = json['dob'];
    anonStatus = json['anon_status'];
    secretStatus = json['secret_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    rightId = json['right_id'];
    username = json['username'];
    name = json['name'];
    surname = json['surname'];
    email = json['email'];
    apiToken = json['api_token'];
    rememberToken = json['remember_token'];
    password = json['password'];
    msisdn = json['msisdn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['actor_id'] = this.actorId;
    data['image'] = this.image;
    data['description'] = this.description;
    data['sex'] = this.sex;
    data['dob'] = this.dob;
    data['anon_status'] = this.anonStatus;
    data['secret_status'] = this.secretStatus;
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