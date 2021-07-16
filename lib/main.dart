import 'package:flutter_dashboard/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initService();
  runApp(MyApp());
}

initService() {
  Get.put(AuthService());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData.dark(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
