import 'package:flutter/material.dart';
import 'package:techblog/components/my_colors.dart';

class TechDivider extends StatelessWidget {
  const TechDivider({
    super.key,
    required this.appWidth,
  });

  final double appWidth;

  @override
  Widget build(BuildContext context) {
    return Divider(
     color: MyColors.dividercolor,
     thickness: 0.5,
     indent: appWidth/10,
     endIndent: appWidth/10,
    );
  }
}