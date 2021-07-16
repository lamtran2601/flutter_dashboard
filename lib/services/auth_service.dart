import 'package:get/get.dart';

import 'package:flutter_dashboard/models/user.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  final user = User().obs;

  bool get isLogin => user.value.name != '';

  Future<User> login() async {
    final newUser = User(name: 'Lam', email: 'lamtran2601@gmail.com');
    
    user.value = newUser;
    
    return user.value;
  }
}
