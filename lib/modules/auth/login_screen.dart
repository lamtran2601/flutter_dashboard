import 'package:flutter/material.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final authController = AuthController.to;
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: authController.userNameController,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))),
              ),
              TextButton(
                child: Text('Login'),
                onPressed: () => {authController.login()},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
