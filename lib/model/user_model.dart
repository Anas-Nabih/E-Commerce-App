class UserModel {
  String userId, name, email, image;

  UserModel({this.name, this.email, this.image, this.userId});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    userId = json["userId"];
    name = json["name"];
    email = json["email"];
    image = json["image"];
  }

  toJson() {
    return {
      "userId": userId,
      "name": name,
      "email": email,
      "image": image,
    };
  }
}
