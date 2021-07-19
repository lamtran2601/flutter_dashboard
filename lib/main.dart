import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:flutter_dashboard/themes.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initService();
  runApp(App());
}

Future<void> initService() async {
  Get.put(AuthService());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
