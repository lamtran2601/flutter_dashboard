import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    if (authService.user.value.name != '' || route == Routes.login) {
        return null;
    } else {
        return RouteSettings(name: Routes.login);
    }
  }
}
