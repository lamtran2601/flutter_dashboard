import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PostPlayerWidget extends StatefulWidget {
  const PostPlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  _PostPlayerWidgetState createState() => _PostPlayerWidgetState();
}

class _PostPlayerWidgetState extends State<PostPlayerWidget> {
  bool showWave = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            showWave = !showWave;
          });
        },
        child: showWave ? PlayerWaveWidget() : PlayerInfoWidget());
  }
}

class PlayerWaveWidget extends StatefulWidget {
  const PlayerWaveWidget({Key? key}) : super(key: key);

  @override
  _PlayerWaveWidgetState createState() => _PlayerWaveWidgetState();
}

class _PlayerWaveWidgetState extends State<PlayerWaveWidget> {
  final width = 2.0;
  final maxHeight = 60;
  final minHeight = 8;
  final padding = 16.0;

  List<int> randoms = [];
  int count = 0;

  @override
  void initState() {
    this.randoms = List.generate(
        ((Get.mediaQuery.size.width / (width * 2)) - (padding / width)).floor(),
        (index) => Random().nextInt(maxHeight - minHeight) + minHeight);

    this.count = Random().nextInt(randoms.length);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final playedColor = Theme.of(context).toggleableActiveColor;
    final remainLineColor = Color.fromRGBO(36, 38, 54, 1);

    return Container(
      padding: EdgeInsets.all(padding),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            children: [
              ...randoms.take(count).map(
                    (e) => Container(
                      margin: EdgeInsets.only(right: width),
                      height: e.toDouble(),
                      decoration: BoxDecoration(
                        color: playedColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      width: width,
                    ),
                  ),
              ...randoms.skip(count).map(
                    (e) => Container(
                      margin: EdgeInsets.only(right: width),
                      height: e.toDouble(),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      width: width,
                    ),
                  ),
            ],
          ),
          Row(
            children: [
              ...randoms.take(count - 1).map(
                    (e) => Container(
                      height: width,
                      width: width * 2,
                      color: playedColor,
                    ),
                  ),
              Container(width: width, color: remainLineColor),
              ...randoms.skip(count).map(
                    (e) => Container(
                      height: width,
                      width: width * 2,
                      color: remainLineColor,
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}

class PlayerInfoWidget extends StatelessWidget {
  const PlayerInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
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
                            fontWeight: FontWeight.w600, fontSize: 12),
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
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  SizedBox(width: 12),
                  SvgPicture.asset('assets/icons/pause.svg',
                      width: 24, height: 24),
                  SizedBox(width: 8),
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              color: Theme.of(context).toggleableActiveColor,
              height: 1,
              width: screenWidth * 40 / 100,
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(63, 66, 73, 1),
                height: 1,
              ),
            ),
          ],
        )
      ],
    );
  }
}
