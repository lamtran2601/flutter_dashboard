import 'package:flutter_dashboard/middlewares/auth_middleware.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';
import 'package:flutter_dashboard/modules/auth/login_screen.dart';
import 'package:flutter_dashboard/modules/auth/login_phone_screen.dart';
import 'package:flutter_dashboard/modules/home/home_controller.dart';
import 'package:flutter_dashboard/modules/home/home_screen.dart';
import 'package:flutter_dashboard/modules/splash/splash_controller.dart';
import 'package:flutter_dashboard/modules/splash/splash_screen.dart';
import 'package:get/get.dart';

abstract class Routes {
  Routes._();

  static const splash = '/';
  static const home = '/home';
  static const login = '/login';
  static const loginPhone = '/login/phone';
}

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
        binding: BindingsBuilder.put(() => SplashController()),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: Routes.home,
        page: () => HomeScreen(),
        binding: BindingsBuilder.put(() => HomeController()),
        middlewares: [AuthMiddleware()]),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: BindingsBuilder.put(() => AuthController()),
    ),
    GetPage(
      name: Routes.loginPhone,
      page: () => LoginPhoneScreen(),
      binding: BindingsBuilder.put(() => AuthController()),
    ),
  ];
}
