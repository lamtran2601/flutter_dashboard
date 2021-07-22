import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/components/custom_bottom_sheet.dart';

class PostQueueWidget extends StatelessWidget {
  const PostQueueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.7,
        builder: (_, controller) => CustomBottomSheet(
            child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Now playing',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 14),
              PostListItemWidget(
                imageUrl:
                    'https://images.unsplash.com/photo-1595422656857-ced3a4a0ce25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNpbmdlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                title: 'Siri, Skip to Friday',
                author: 'billpower',
              ),
              Divider(
                height: 42,
              ),
              Text(
                'Next up',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 14),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: 10,
                  itemBuilder: (_, index) => PostListItemWidget(
                    imageUrl:
                        'https://images.unsplash.com/photo-1595422656857-ced3a4a0ce25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNpbmdlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                    title: 'Siri, Skip to Friday',
                    author: 'billpower',
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

class PostListItemWidget extends StatelessWidget {
  const PostListItemWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.author = 'Unknown',
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 52,
              width: 52,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                author,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromRGBO(159, 161, 164, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
