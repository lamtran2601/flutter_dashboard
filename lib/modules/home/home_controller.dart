import 'package:flutter_dashboard/modules/home/components/post_action_queue_widget.dart';
import 'package:flutter_dashboard/modules/home/components/post_action_share_widget.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final count = 0.obs;
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
  void increment() => count.value++;

  void sharePost() {
    Get.bottomSheet(PostActionShareWidget());
  }

  void addPostToQueue() {
    Get.bottomSheet(
      PostQueueWidget(),
      isScrollControlled: true,
    );
  }
}
