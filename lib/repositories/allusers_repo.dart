import 'package:car_rental/services/api_services.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/services/url.dart';

class UsersRepo {
  final token = SharedPref.instence.getVendor();

  EitherResponse getAllUsers() async =>
      await ApiService.getApi(AppUrl.getAllUsers, token);
}
