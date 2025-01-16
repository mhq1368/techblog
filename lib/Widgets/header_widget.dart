import 'package:flutter/material.dart';
import 'package:techblog/Models/fake_data.dart';
import 'package:techblog/Models/my_colors.dart';
import 'package:techblog/Models/settingstextstyle.dart';
import 'package:techblog/gen/assets.gen.dart';

class HeaderPoster extends StatelessWidget {
  const HeaderPoster({
    super.key,
    required this.appHeight,
  });

  final double appHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 15, 0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Image.asset(
              Assets.images.apppoter.path,
              fit: BoxFit.cover,
              height: appHeight / 4,
            ),
          ),
          Container(
              height: appHeight / 4,
              decoration: BoxDecoration(
                  gradient: MyGradiant.postergradiant,
                  borderRadius: BorderRadius.circular(25))),
          Positioned(
            right: 10,
            bottom: 15,
            left: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${homePagePosterMap["writername"]}  -   ${homePagePosterMap["timestr"]}",style:SettingsFonts.postertextstyle),
                     Text("${homePagePosterMap["likecountstrtext"]}  ${homePagePosterMap["likecountstr"]}",style:SettingsFonts.postertextstyle),
                
                  ],
                ),
                SizedBox(height: 15,),
                Text("${homePagePosterMap["postercomments"]}  ",style:SettingsFonts.postertextstylecomments),
    
              ],
            ),
          )
        ],
      ),
    );
  }
}