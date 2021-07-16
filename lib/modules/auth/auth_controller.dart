import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter_dashboard/models/user.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController userNameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  static AuthController get to => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    if (AuthService.to.isLogin) {
      goHomeOrBack();
    }
    super.onReady();
  }

  @override
  void onClose() {}

  void goHomeOrBack() {
    if (Get.routing.previous.isNotEmpty) {
      Get.back();
    } else {
      Get.offNamed(Routes.home);
    }
  }

  login() async {
    await AuthService.to.login();
    goHomeOrBack();
  }
}
