import 'package:car_rental/view_model/users_controller.dart';
import 'package:get/get.dart';

class InitController extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController(), permanent: true);
  }
}
