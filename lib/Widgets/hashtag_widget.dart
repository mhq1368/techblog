import 'package:flutter/material.dart';
import 'package:techblog/Models/fake_data.dart';
import 'package:techblog/Models/my_colors.dart';
import 'package:techblog/Models/settingstextstyle.dart';
import 'package:techblog/gen/assets.gen.dart';

class HashtagHome extends StatefulWidget {
  const HashtagHome({super.key});

  @override
  State<HashtagHome> createState() => _HashtagHomeState();
}

class _HashtagHomeState extends State<HashtagHome> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: tagsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:  MyGradiant.hashtaggradiant
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(Assets.icons.a1629506.path,
                  height: 16,
                  ),
                  SizedBox(width: 8,),
                  Text(tagsList[index].title
                  ,style:  SettingsFonts.hashtagscatstextstyle,
                  )
                ],
              ),
            ),
          ),
          );
        },
      ),
    );
  }
}
