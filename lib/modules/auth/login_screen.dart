import 'package:flutter/material.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';

import 'components/signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.normal,
                        fontSize: 74,
                      ),
                    ),
                    Text('Sub Title'),
                  ],
                ),
              ),
              Column(
                children: [
                  SignInButton(
                    iconPath: 'assets/icons/facebook.svg',
                    text: 'Sign in with Facebook',
                    color: Color.fromRGBO(59, 89, 152, 1),
                    onPressed: () {
                      AuthController.to.signinWithFacebook();
                    },
                  ),
                  SignInButton(
                    iconPath: 'assets/icons/phone.svg',
                    text: 'Sign in with Phone number',
                    color: Color.fromRGBO(18, 179, 71, 1),
                    onPressed: () {
                      AuthController.to.signinWithPhoneNumber();
                    },
                  ),
                  SignInButton(
                    iconPath: 'assets/icons/google.svg',
                    text: 'Sign in with Google',
                    color: Color.fromRGBO(221, 75, 57, 1),
                    onPressed: () {
                      AuthController.to.signinWithGoogle();
                    },
                  ),
                  SignInButton(
                    iconPath: 'assets/icons/apple.svg',
                    text: 'Sign in with Apple ID',
                    color: Color.fromRGBO(255, 255, 255, 1),
                    iconColor: Color.fromRGBO(0, 0, 0, 1),
                    textColor: Color.fromRGBO(0, 0, 0, 1),
                    onPressed: () {
                      AuthController.to.signinWithAppleID();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
