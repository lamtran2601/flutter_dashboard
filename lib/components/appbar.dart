import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  Widget build(BuildContext context) {
    final canPop = ModalRoute.of(context)?.canPop ?? false;

    return AppBar(
      leading: canPop
          ? IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
              onPressed: () {
                Navigator.maybePop(context);
              },
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
