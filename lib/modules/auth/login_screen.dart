import 'package:flutter/material.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';
import 'package:flutter_dashboard/services/auth_service.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(AuthService.to.user.value.name)),
            TextButton(
              child: Text('Login'),
              onPressed: () =>{
                controller.login()
              },
              ),
          ],
        ),
      ),
    );
  }
}