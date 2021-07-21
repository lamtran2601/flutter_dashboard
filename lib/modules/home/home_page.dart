import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'components/post_action_widget.dart';
import 'components/post_info_widget.dart';
import 'components/post_player_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              'https://images.unsplash.com/photo-1589894809408-fdca3d7d548d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
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
                      Column(
                        children: [
                          PostActionWidget(),
                        ],
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
