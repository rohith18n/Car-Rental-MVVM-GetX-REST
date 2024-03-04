import 'package:car_rental/services/api_services.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/services/url.dart';

class CarBrandRepo {
  final token = SharedPref.instence.getVendor();

  EitherResponse getCarBrands() async =>
      await ApiService.getApi(AppUrl.getCarBrands, token);

  EitherResponse createCarBrand(Map cityInfo) async =>
      await ApiService.postApi(cityInfo, AppUrl.createCarBrand, token);
}
