import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter_dashboard/models/user.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }
  
  @override
  void onReady() {
    Get.offAllNamed(Routes.home);
    super.onReady();
  }

  @override
  void onClose() {}
}
