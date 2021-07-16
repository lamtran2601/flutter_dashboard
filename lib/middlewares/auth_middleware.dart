import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    if (AuthService.to.isLogin) {
      return null;
    } else {
      return RouteSettings(name: Routes.login);
    }
  }
}
