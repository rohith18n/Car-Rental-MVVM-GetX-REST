// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:car_rental/model/car_model.dart';
import 'package:car_rental/repositories/car_repo.dart';
import 'package:car_rental/widgets/snackbar_messenger.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();
  late final TextEditingController licenceNumberController;
  late final TextEditingController carBrandController;
  late final TextEditingController carModelController;
  late final TextEditingController carVariantController;
  late final TextEditingController cityController;
  late final TextEditingController yearController;
  late final TextEditingController chassisNumberController;

  final showLoading = false.obs;
  bool passwordCompleted = false;
  final userrocontroller = Get.find<UserController>();
  @override
  void onInit() {
    super.onInit();
    licenceNumberController = TextEditingController();
    carBrandController = TextEditingController();
    carModelController = TextEditingController();
    cityController = TextEditingController();
    carVariantController = TextEditingController();
    yearController = TextEditingController();
  }

  List<Rx<CarModel>> cars = [];

  Future<List<Rx<CarModel>>?> getAllCars(String token) async {
    final either = await CarRepo().getAllCars();
    log("=======${either.isRight} response is coming======");
    either.fold((left) {
      Get.showSnackbar(getxSnackbar(message: left.message, isError: true));
      cars = [];
      log("error");
      // Return null or an empty list when there's an error
      return null;
    }, (response) {
      final userData = response['data'];
      print('Type of userData: ${userData.runtimeType}');
      print('Length of userData: ${userData.length}');

      List<Rx<CarModel>> cars = userData.map<Rx<CarModel>>((json) {
        CarModel carModel = CarModel.fromJson(json);

        return Rx<CarModel>(carModel);
      }).toList();

      log(cars.length.toString());

      this.cars = cars.obs;
      // Return the cars list when successful
      return cars;
    });

    // Return the cars list after the fold operation
    return cars;
  }
}
