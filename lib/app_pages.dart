import 'package:get/get.dart';

import 'middlewares/auth_middleware.dart';
import 'modules/auth/auth_controller.dart';
import 'modules/auth/login_screen.dart';
import 'modules/main/main_controller.dart';
import 'modules/main/main_screen.dart';
import 'modules/splash/splash_controller.dart';
import 'modules/splash/splash_screen.dart';

abstract class Routes {
  Routes._();

  static const splash = '/';
  static const home = '/home';
  static const login = '/login';
}

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: BindingsBuilder.put(() => SplashController()),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: Routes.home,
      page: () => MainScreen(),
      binding: BindingsBuilder.put(() => MainController()),
      // middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: BindingsBuilder.put(() => AuthController()),
    ),
  ];
}
