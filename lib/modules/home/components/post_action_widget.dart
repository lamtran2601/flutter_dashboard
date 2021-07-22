import 'package:flutter/material.dart';
import 'package:flutter_dashboard/modules/home/home_controller.dart';
import 'package:flutter_svg/svg.dart';

class PostActionWidget extends StatelessWidget {
  const PostActionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icons/play.svg',
          width: 48,
          height: 48,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('#love #happy #couple #staysafe'),
                Text('#modaymood #mood'),
              ],
            ),
            Column(
              children: [
                PostActionItemWidget(
                  svgIconPath: 'assets/icons/queue.svg',
                  label: '',
                  onPressed: () {
                    HomeController.to.addPostToQueue();
                  },
                ),
                SizedBox(height: 10),
                PostActionItemWidget(
                  svgIconPath: 'assets/icons/like.svg',
                  label: '10.2k',
                ),
                SizedBox(height: 16),
                PostActionItemWidget(
                  svgIconPath: 'assets/icons/comment.svg',
                  label: '320',
                ),
                SizedBox(height: 16),
                PostActionItemWidget(
                  svgIconPath: 'assets/icons/share.svg',
                  label: '110',
                  onPressed: () {
                    HomeController.to.sharePost();
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class PostActionItemWidget extends StatelessWidget {
  const PostActionItemWidget({
    Key? key,
    required this.svgIconPath,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final String svgIconPath;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            svgIconPath,
            width: 32,
            height: 32,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
