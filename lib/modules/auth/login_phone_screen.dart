import 'package:flutter/material.dart';
import 'package:flutter_dashboard/components/appbar.dart';
import 'package:flutter_dashboard/modules/auth/auth_controller.dart';

class LoginPhoneScreen extends StatefulWidget {
  const LoginPhoneScreen({Key? key}) : super(key: key);

  @override
  _LoginPhoneScreenState createState() => _LoginPhoneScreenState();
}

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
  final authController = AuthController.to;

  bool _isValidPhoneNumber = false;

  @override
  void initState() {
    authController.phoneInputController.addListener(_validatePhoneListener);

    super.initState();
  }

  void _validatePhoneListener() {
    setState(() {
      _isValidPhoneNumber =
          authController.phoneInputController.text.length >= 8;
    });
  }

  @override
  void dispose() {
    authController.phoneInputController.removeListener(_validatePhoneListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontStyle: FontStyle.normal,
                    height: 2,
                  ),
                ),
                Text('We will send confirmation code'),
              ],
            ),
            TextField(
              controller: authController.phoneInputController,
              keyboardType: TextInputType.phone,
              autofocus: true,
            ),
            ElevatedButton(
              onPressed: _isValidPhoneNumber
                  ? () {
                      authController.handleInputPhoneNumberDone();
                    }
                  : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Next'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPhoneOTPScreen extends StatefulWidget {
  const LoginPhoneOTPScreen({Key? key}) : super(key: key);

  @override
  _LoginPhoneOTPScreenState createState() => _LoginPhoneOTPScreenState();
}

class _LoginPhoneOTPScreenState extends State<LoginPhoneOTPScreen> {
  final authController = AuthController.to;

  bool _isValidOTP = false;

  @override
  void initState() {
    authController.otpInputController.addListener(_validateOTPListener);

    super.initState();
  }

  void _validateOTPListener() {
    setState(() {
      _isValidOTP = authController.otpInputController.text.length == 6;
    });
  }

  @override
  void dispose() {
    authController.otpInputController.removeListener(_validateOTPListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter OTP code',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    fontStyle: FontStyle.normal,
                    height: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'We send it to the number ',
                      style: TextStyle(color: Color.fromRGBO(159, 161, 164, 1)),
                    ),
                    Text(authController.phoneInputController.text),
                  ],
                ),
              ],
            ),
            TextField(
              controller: authController.otpInputController,
              keyboardType: TextInputType.phone,
              autofocus: true,
            ),
            ElevatedButton(
              onPressed: _isValidOTP
                  ? () {
                      // authController.login();
                    }
                  : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Next'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
