class UserModel {
  final String? id;
  final String? fullName;
  final String? mobileNumber;
  final String? email;
  final int? wallet;
  final String? createdAt;
  final String? updatedAt;
  final String? image;
  final String? city;
  final bool? isCity;
  final bool? isState;
  final String? state;
  final int? level;
  final String? memberSince;

  UserModel({
    this.id,
    this.fullName,
    this.mobileNumber,
    this.email,
    this.wallet,
    this.createdAt,
    this.updatedAt,
    this.image,
    this.city,
    this.isCity,
    this.isState,
    this.state,
    this.level,
    this.memberSince,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      fullName: json['user']['fullName'],
      mobileNumber: json['user']['mobileNumber'],
      email: json['user']['email'],
      wallet: json['user']['wallet'],
      createdAt: json['user']['createdAt'],
      updatedAt: json['user']['updatedAt'],
      image: json['user']['image'],
      city: json['user']['city'],
      isCity: stringToBool(json['user']['isCity']), // Convert string to bool
      isState: stringToBool(json['user']['isState']), // Convert string to bool
      state: json['user']['state'],
      level: json['user']['level'],
      memberSince: json['memberSince'],
    );
  }

  static bool? stringToBool(String? value) {
    return value?.toLowerCase() == 'true';
  }
}
