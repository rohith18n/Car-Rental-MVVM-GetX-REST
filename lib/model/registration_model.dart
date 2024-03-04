class RegistrationModel {
  String firstName;
  String lastName;
  String mobileNumber;
  String email;
  String password;
  String? token;

  RegistrationModel(
      {required this.firstName,
      required this.lastName,
      required this.mobileNumber,
      required this.email,
      required this.password,
      this.token});

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      RegistrationModel(
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        mobileNumber: json['mobileNumber'],
        token: json["token"],
      );

  static Map<String, dynamic> tojson(RegistrationModel admin) => {
        'firstName': admin.firstName,
        'lastName': admin.lastName,
        'mobileNumber': admin.mobileNumber,
        'email': admin.email,
        'password': admin.password,
        'token': admin.token
      };
}
