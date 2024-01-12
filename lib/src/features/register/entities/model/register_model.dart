class UserModel {
  String? status;
  String? message;
  UserData? user;

  UserModel({required this.status, required this.message, required this.user});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        status: json['status'],
        message: json['message'],
        user: json['user'] != null ? UserData.fromJson(json['user']) : null);
  }
}

class UserData {
  dynamic name;
  dynamic email;
  dynamic phone;
  dynamic nationalId;
  dynamic gender;
  dynamic token;
  dynamic profileImage;

  UserData(
      {required this.name,
      required this.email,
      required this.phone,
      required this.nationalId,
      required this.gender,
      required this.token,
      required this.profileImage});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        nationalId: json['nationalId'],
        gender: json['gender'],
        token: json['token'],
        profileImage: json['profileImage']);
  }
}
