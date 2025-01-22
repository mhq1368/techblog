import 'package:flutter/material.dart';
import 'package:techblog/components/my_colors.dart';
import 'package:techblog/gen/assets.gen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.appWidth,
    required this.appHeight,
    required this.changePage,
  });

  final double appWidth;
  final double appHeight;
  final Function(int) changePage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(gradient: MyGradiant.bottomNavigationBG),
      child: Container(
        height: appHeight / 2,
        margin: EdgeInsets.fromLTRB(45, 10, 45, 10),
        decoration: BoxDecoration(
            gradient: MyGradiant.bottomNav,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  changePage(0);
                },
                icon: ImageIcon(
                  Assets.icons.homeicon.provider(),
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  Assets.icons.writeicon.provider(),
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  changePage(1);
                },
                icon: ImageIcon(
                  Assets.icons.usericon.provider(),
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
