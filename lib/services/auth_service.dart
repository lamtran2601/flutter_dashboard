import 'package:get/get.dart';

import 'package:flutter_dashboard/models/user.dart';

class AuthService extends GetxService {
  
  static AuthService get to => Get.find();

  final user = User().obs;
}
