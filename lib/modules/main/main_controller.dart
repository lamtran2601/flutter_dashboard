import 'package:get/get.dart';

enum Tabs { Home, Search, Record, Notification, Profile }

class MainController extends GetxController {
  static MainController get to => Get.find();

  final currentTab = Tabs.Home.obs;

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

  void setTab(Tabs newTab) => currentTab.value = newTab;
}
