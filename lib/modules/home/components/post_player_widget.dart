import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostPlayerWidget extends StatelessWidget {
  const PostPlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(63, 66, 73, 1),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Siri, Skip to Friday - billpower',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '01:45',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 12),
              SvgPicture.asset(
                'assets/icons/pause.svg',
                width: 24,
                height: 24,
              ),
              SizedBox(width: 8),
            ],
          )
        ],
      ),
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
