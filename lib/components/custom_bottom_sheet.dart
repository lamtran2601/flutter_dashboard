import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(39, 43, 50, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.black80,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
