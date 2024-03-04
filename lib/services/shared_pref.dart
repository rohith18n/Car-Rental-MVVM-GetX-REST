import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref _instence = SharedPref._();
  static SharedPref get instence => _instence;

  static const String email = 'email';
  static const String token = 'token';
  static const String password = 'password';

  late SharedPreferences sharedPref;

  initStorage() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  setToken(String vendorToken) async {
    await sharedPref.setString(token, vendorToken);
  }

  // setVendor(VendorModel vendor) async {
  //   await sharedPref.setString(email, vendor.email);
  //   await sharedPref.setString(token, vendor.token!);
  //   await sharedPref.setString(password, vendor.password);
  // }

  signout() {
    sharedPref.remove(email);
    sharedPref.remove(token);
    sharedPref.remove(password);
  }

  String? getVendor() => sharedPref.getString(token);
}
