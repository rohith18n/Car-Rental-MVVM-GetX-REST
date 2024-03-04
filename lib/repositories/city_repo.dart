import 'package:car_rental/services/api_services.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/services/url.dart';

class CityRepo {
  final token = SharedPref.instence.getVendor();

  EitherResponse getAllCities() async =>
      await ApiService.getApi(AppUrl.getAllCities, token);

  EitherResponse getCityById(String cityId) async =>
      await ApiService.getApi(AppUrl.getCityById + cityId, token);

  EitherResponse createCity(Map cityInfo) async =>
      await ApiService.postApi(cityInfo, AppUrl.createCity, token);
}
