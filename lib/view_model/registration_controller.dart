import 'package:car_rental/repositories/auth_repo.dart';
import 'package:car_rental/services/shared_pref.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view_model/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../widgets/snackbar_messenger.dart';

class RegistrationController extends GetxController {
  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController mobileController;
  final showLoading = false.obs;
  bool passwordCompleted = false;
  final userrocontroller = Get.find<UserController>();
  @override
  void onInit() {
    super.onInit();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    passwordController = TextEditingController();
  }

  validateAdmin() async {
    if (registrationFormKey.currentState!.validate()) {
      final adminData = {
        'firstName': firstNameController.text.trim(),
        'email': emailController.text.trim(),
        'mobileNumber': mobileController.text.trim(),
        'password': passwordController.text.trim(),
        'lastName': lastNameController.text.trim(),
      };
      showLoading.value = true;
      final either = await AuthRepo().signupGinno(adminData);
      either.fold((error) {
        Get.showSnackbar(getxSnackbar(message: error.message, isError: true));
      }, (response) async {
        if (response['status'] == 200) {
          final token = response['token'];
          await SharedPref.instence.setToken(token);
          final data = await userrocontroller.getAllUsers(token);
          if (data != null) {
            Get.off(() => AppBottomNavBar());
            Get.showSnackbar(getxSnackbar(
                message: 'Account created successfully', isError: F));
            showLoading.value = F;
          } else {
            showLoading.value = F;
            Get.showSnackbar(
                getxSnackbar(message: 'Something went wrong', isError: T));
          }
        } else {
          showLoading.value = F;
          Get.showSnackbar(
              getxSnackbar(message: response['message'], isError: T));
        }
      });
    }
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please Enter a Valid Email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 8) {
      return 'Minimum 8 charechter required';
    }
    return null;
  }

  String? validateConfirmPass(String value) {
    if (value.length < 8) {
      return 'Minimum 8 charechter required';
    }
    return null;
  }

  String? validatefirstName(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  String? validateLocation(String value) {
    if (value.isEmpty) {
      return 'Field is required';
    }
    return null;
  }

  String? validateNumber(String value) {
    final RegExp mobileNumber = RegExp(r'^[0-9]{10}$');
    if (!mobileNumber.hasMatch(value)) {
      return 'Invalid mobile number';
    }
    return null;
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
  }
}
