import 'package:flutter_dashboard/middlewares/auth_middleware.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';
import 'package:flutter_dashboard/modules/auth/login_screen.dart';
import 'package:flutter_dashboard/modules/home/home_controller.dart';
import 'package:flutter_dashboard/modules/home/home_screen.dart';
import 'package:flutter_dashboard/modules/splash/splash_controller.dart';
import 'package:flutter_dashboard/modules/splash/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: BindingsBuilder.put(() => SplashController()),
      middlewares: [AuthMiddleware()]
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: BindingsBuilder.put(() => HomeController()),
      middlewares: [AuthMiddleware()]
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: BindingsBuilder.put(() => AuthController()),
    ),
  ];
}
