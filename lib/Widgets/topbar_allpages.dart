import 'package:flutter/material.dart';
import 'package:techblog/Models/my_colors.dart';
import 'package:techblog/gen/assets.gen.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.appWidth,
    required this.appHeight,
  });

  final double appWidth;
  final double appHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            Assets.icons.menuicon.path,
            width: appWidth / 35.92,
            color: MyColors.menuiconcolor,
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