import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter_dashboard/models/user.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void setUser(newUser) {
    AuthService.to.user.update((val) {
      val = newUser;
    });
  }

  login() {
    final newUser = User(name: 'Lam', email: 'lamtran2601@gmail.com');
    AuthService.to.user.value = newUser;
    if (Get.routing.previous.isEmpty) {
      Get.offNamed(Routes.home);
    } else {
      Get.back();
    }
  }
}
