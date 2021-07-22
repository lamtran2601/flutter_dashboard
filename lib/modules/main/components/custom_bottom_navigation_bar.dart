import 'package:flutter/material.dart';

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
      padding: EdgeInsets.fromLTRB(8, 4, 8, 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...items.asMap().entries.map<Widget>((item) {
            final isActive = item.key == currentIndex;
            return IconButton(
              splashRadius: 26,
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
