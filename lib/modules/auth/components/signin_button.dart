import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    Color? this.iconColor,
    required this.iconPath,
    required this.text,
    required this.onPressed,
    required this.color,
    this.textColor,
  }) : super(key: key);

  final String iconPath;
  final String text;
  final Color color;
  final Color? iconColor;
  final Color? textColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 41),
                child: SvgPicture.asset(
                  iconPath,
                  color:
                      iconColor ?? Get.theme.buttonTheme.colorScheme?.onPrimary,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  color:
                      textColor ?? Get.theme.buttonTheme.colorScheme?.onPrimary,
                ),
              ),
              SizedBox(
                width: 41,
              )
            ],
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
