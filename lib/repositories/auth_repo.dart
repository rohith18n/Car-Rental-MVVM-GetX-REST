import 'package:car_rental/services/api_services.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/services/url.dart';

class AuthRepo {
  final token = SharedPref.instence.getVendor();

  EitherResponse loginGinno(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.login);

  EitherResponse signupGinno(var rawData) async =>
      await ApiService.postApi(rawData, AppUrl.signup);
}
