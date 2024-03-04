import 'dart:developer';

import 'package:car_rental/repositories/auth_repo.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view_model/users_controller.dart';
import 'package:car_rental/widgets/snackbar_messenger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final showLoading = false.obs;
  final loginKey = GlobalKey<FormState>();
  final userController = Get.find<UserController>();
  String? token;
  validateLogin() async {
    if (loginKey.currentState!.validate()) {
      showLoading.value = true;
      Map<String, dynamic> inputData = {
        'email': emailController.text.trim(),
        'password': passwordController.text.trim()
      };
      final either = await AuthRepo().loginGinno(inputData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      }, (response) async {
        // if (response['status'] == 'success') {
        token = response['accessToken'];

        await SharedPref.instence.setToken(token!);
      }
          //   else {
          //     Get.showSnackbar(
          //       getxSnackbar(message: response['message'], isError: true),
          //     );
          //     showLoading.value = false;
          //   }
          // }
          );
      if (token != null) {
        final data = await userController.getAllUsers(token!);
        log("=========returntype getAllUsers $data========");
        if (data != null) {
          showLoading.value = false;
          Get.off(() => AppBottomNavBar());
          Get.showSnackbar(
              getxSnackbar(message: 'Welcome Back', isError: false));
          token = null;
          emailController.clear();
          passwordController.clear();
        } else {
          showLoading.value = false;
        }
      }
    }
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
