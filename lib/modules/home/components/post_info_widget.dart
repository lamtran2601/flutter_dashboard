import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostInfoWidget extends StatelessWidget {
  const PostInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: CachedNetworkImageProvider(
            'https://i0.wp.com/bucketlistjourney.net/wp-content/uploads/2018/02/Dog-Birthday-Unsplash-2-2.jpg',
          ),
        ),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('user.name . Following'),
            Text('1 day ago | 05:00'),
          ],
        ),
      ],
    );
  }
}

class PostTitleWidget extends StatelessWidget {
  const PostTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      color: Colors.black,
      child: Text(
        'Post Title',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          height: 32 / 26,
        ),
      ),
    );
  }
}
