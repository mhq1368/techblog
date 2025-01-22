import 'package:flutter/material.dart';
import 'package:techblog/components/my_colors.dart';
import 'package:techblog/gen/assets.gen.dart';

class TopBar extends StatelessWidget {
  TopBar({
    super.key,
    required this.appWidth,
    required this.appHeight,
    required this.key1,
  });

  final double appWidth;
  final double appHeight;
  final GlobalKey<ScaffoldState> key1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              key1.currentState!.openDrawer();
            },
            child: Image.asset(
              Assets.icons.menuicon.path,
              width: appWidth / 35.92,
              color: MyColors.menuiconcolor,
            ),
          ),
          Image.asset(
            Assets.icons.logo.path,
            height: appHeight / 10.92,
          ),
          Image.asset(
            Assets.icons.searchicon.path,
            height: appHeight / 35.92,
            color: MyColors.searchiconcolor,
          ),
        ],
      ),
    );
  }
}
