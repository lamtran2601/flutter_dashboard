import 'package:flutter/material.dart';

import '../main_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onChange,
  }) : super(key: key);
  final int currentIndex;
  final List<CustomBottomNavigationBarItem> items;
  final Function(int value) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...items.asMap().entries.map<Widget>((item) {
            final isActive = item.key == currentIndex;
            return IconButton(
              color: isActive ? Theme.of(context).toggleableActiveColor : null,
              onPressed: () => onChange(item.key),
              icon: isActive ? item.value.activeIcon : item.value.icon,
            );
          })
        ],
      ),
    );
  }
}

class CustomBottomNavigationBarItem {
  const CustomBottomNavigationBarItem({
    Key? key,
    required this.icon,
    required this.activeIcon,
  });
  final Widget icon;
  final Widget activeIcon;
}
