import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/components/custom_bottom_sheet.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class PostQueueWidget extends StatefulWidget {
  const PostQueueWidget({Key? key}) : super(key: key);

  @override
  _PostQueueWidgetState createState() => _PostQueueWidgetState();
}

class _PostQueueWidgetState extends State<PostQueueWidget>
    with SingleTickerProviderStateMixin {
  late SlidableController slidableController;

  bool _slideIsOpen = false;

  @override
  void initState() {
    slidableController = SlidableController(this);
    slidableController.endGesture.addListener(endGestureCallback);

    super.initState();
  }

  void endGestureCallback() {
    print(endGestureCallback);
    print(slidableController.endGesture.value?.velocity);
    setState(() {
      _slideIsOpen = slidableController.endGesture.value?.velocity != 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.7,
        builder: (_, controller) => CustomBottomSheet(
            child: Column(
          children: [
            Container(
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
                ],
              ),
            ),
            Expanded(
              child: ReorderableListView.builder(
                buildDefaultDragHandles: false,
                scrollController: controller,
                itemCount: 10,
                itemBuilder: (_, index) => Container(
                  key: Key('$index'),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 16),
                        child: ReorderableDragStartListener(
                          index: index,
                          child: SvgPicture.asset(
                            'assets/icons/drag.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Container(
                        child: Slidable(
                          key: Key('$index'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: PostListItemWidget(
                                    imageUrl:
                                        'https://images.unsplash.com/photo-1595422656857-ced3a4a0ce25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNpbmdlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
                                    title: '$index - Siri, Skip to Friday',
                                    author: 'billpower',
                                  ),
                                ),
                              ),
                              ReorderableDragStartListener(
                                index: index,
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40,
                                  height: 50,
                                  padding: EdgeInsets.all(16),
                                ),
                              ),
                            ],
                          ),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            extentRatio: 0.16,
                            children: [
                              Expanded(
                                child: Container(
                                  color: Color.fromRGBO(202, 61, 61, 1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/delete.svg',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Delete',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onReorder: (int oldIndex, int newIndex) {},
              ),
            )
          ],
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
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: 56,
            width: 56,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
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
        ),
      ],
    );
  }
}
