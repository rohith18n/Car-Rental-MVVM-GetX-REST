// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:car_rental/model/user_model.dart';
import 'package:car_rental/repositories/allusers_repo.dart';
import 'package:car_rental/widgets/snackbar_messenger.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  List<Rx<UserModel>> users = [];

  Future<List<Rx<UserModel>>?> getAllUsers(String token) async {
    final either = await UsersRepo().getAllUsers();
    log("=======${either.isRight} response is coming======");
    either.fold((left) {
      Get.showSnackbar(getxSnackbar(message: left.message, isError: true));
      users = [];
      log("error");
      // Return null or an empty list when there's an error
      return null;
    }, (response) {
      final userData = response['data'];
      print('Type of userData: ${userData.runtimeType}');
      print('Length of userData: ${userData.length}');

      List<Rx<UserModel>> users = userData.map<Rx<UserModel>>((json) {
        UserModel userModel = UserModel.fromJson(json);
        log('userid---${userModel.id.toString()}');
        return Rx<UserModel>(userModel);
      }).toList();

      log(users.length.toString());

      this.users = users.obs;
      // Return the users list when successful
      return users;
    });

    // Return the users list after the fold operation
    return users;
  }
}
