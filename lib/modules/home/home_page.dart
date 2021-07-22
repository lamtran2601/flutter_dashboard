import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_dashboard/modules/home/home_controller.dart';
import 'package:get/get.dart';

import 'components/post_action_widget.dart';
import 'components/post_info_widget.dart';
import 'components/post_player_widget.dart';

class HomePage extends StatelessWidget {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              'https://images.unsplash.com/photo-1565209216345-efdd627e46b2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3Vuc2V0JTIwY2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PostInfoWidget(),
                          SizedBox(height: 16),
                          PostTitleWidget(),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            PostActionWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PostPlayerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
