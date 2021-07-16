import 'package:flutter/material.dart';
import 'package:flutter_dashboard/modules/splash/splash_controller.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Splash')
      ),
    );
  }
}