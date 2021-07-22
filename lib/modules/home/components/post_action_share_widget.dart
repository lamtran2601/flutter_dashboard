import 'package:flutter/material.dart';
import 'package:flutter_dashboard/components/custom_bottom_sheet.dart';
import 'package:flutter_svg/svg.dart';

class PostActionShareWidget extends StatelessWidget {
  const PostActionShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.4,
        builder: (_, controller) => CustomBottomSheet(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Share to',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _ShareToWidget(
                      svgPath: 'assets/icons/copy_link.svg',
                      label: 'Copy link',
                      onPressed: () {},
                    ),
                    _ShareToWidget(
                      svgPath: 'assets/icons/facebook_stories.svg',
                      label: 'Copy link',
                      onPressed: () {},
                    ),
                    _ShareToWidget(
                      svgPath: 'assets/icons/facebook_newfeed.svg',
                      label: 'Copy link',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ShareToWidget extends StatelessWidget {
  const _ShareToWidget({
    Key? key,
    required this.svgPath,
    required this.label,
    required this.onPressed,
  }) : super(key: key);
  final String svgPath;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          SvgPicture.asset(
            svgPath,
            height: 48,
            width: 48,
          ),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
      onTap: onPressed,
    );
  }
}
