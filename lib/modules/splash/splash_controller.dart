import 'package:flutter_dashboard/app_pages.dart';
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
