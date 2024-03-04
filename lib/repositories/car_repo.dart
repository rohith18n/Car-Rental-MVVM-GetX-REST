import 'package:car_rental/services/api_services.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/services/url.dart';

class CarRepo {
  final token = SharedPref.instence.getVendor();

  EitherResponse getAllAddedCars() async =>
      await ApiService.getApi(AppUrl.getAllAddedCars, token);

  EitherResponse getAllCars() async =>
      await ApiService.getApi(AppUrl.getAllCars, token);

  EitherResponse createCar(Map carInfo) async =>
      await ApiService.postApi(carInfo, AppUrl.createCar, token);

  EitherResponse uploadCarImages(Map carImages, String carId) async =>
      await ApiService.postApi(
          carImages, "${AppUrl.uploadCarImages}$carId/uploadCarImages", token);

  EitherResponse deleteCarById(String carId) async =>
      await ApiService.deleteApi(AppUrl.deleteCarById + carId, token!);
}
