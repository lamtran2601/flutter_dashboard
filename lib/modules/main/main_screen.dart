import 'package:flutter/material.dart';
import 'package:flutter_dashboard/components/not_found_page.dart';
import 'package:flutter_dashboard/modules/home/home_page.dart';
import 'package:flutter_dashboard/modules/main/components/custom_bottom_navigation_bar.dart';
import 'package:flutter_dashboard/modules/main/main_controller.dart';
import 'package:flutter_dashboard/modules/search/search_page.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  final pages = {
    Tabs.Home: HomePage(),
    Tabs.Search: SearchPage(),
    Tabs.Record: HomePage(),
    Tabs.Notification: HomePage(),
    Tabs.Profile: HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child:
                  pages[MainController.to.currentTab.value] ?? NotFoundPage(),
            ),
            CustomBottomNavigationBar(
              currentIndex:
                  Tabs.values.indexOf(MainController.to.currentTab.value),
              items: [
                CustomBottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                ),
                CustomBottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  activeIcon: Icon(Icons.search_sharp),
                ),
                CustomBottomNavigationBarItem(
                  icon: Icon(
                    Icons.mic_none_outlined,
                    size: 36,
                  ),
                  activeIcon: Icon(
                    Icons.mic,
                    size: 36,
                  ),
                ),
                CustomBottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  activeIcon: Icon(Icons.notifications),
                ),
                CustomBottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                ),
              ],
              onChange: (int value) {
                MainController.to.setTab(Tabs.values.elementAt(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}
