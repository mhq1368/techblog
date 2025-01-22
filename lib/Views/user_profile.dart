import 'package:flutter/material.dart';
import 'package:techblog/components/my_colors.dart';
import 'package:techblog/components/settingstextstyle.dart';
import 'package:techblog/components/static_strings.dart';
import 'package:techblog/Widgets/divider.dart';
import 'package:techblog/gen/assets.gen.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: appHeight / 9.5,
          //Start----DefaultIcons
          automaticallyImplyLeading: false,
          //End----DefaultIcons
          elevation: 0,
          
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: Assets.images.profile.provider(),
                  height: SizesAll.profilepic,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(Assets.icons.pen.provider(),color: Color.fromARGB(255, 40, 107, 184),),
                      SizedBox(width: 10,),
                      Text(StaticStrings.profileText,style: SettingsFonts.profiletextstyle,),
                     
                    ],
                  ),
                   SizedBox(height: 60,),
                   Text("فاطمه امیری",style: SettingsFonts.profiletextstyle,),
                   Text("fatemeamiri@gmail.com",style: SettingsFonts.profiletextstyle,),
                  SizedBox(height: 40,),
                   TechDivider(appWidth: appWidth),
                   SizedBox(
                    height: 45,
                     child: Center(
                       child: InkWell(
                        onTap: () {
                        },
                        child: Text(StaticStrings.myFavBlog,style: SettingsFonts.profiletextstyle,),
                       ),
                     ),
                   ),

                   TechDivider(appWidth: appWidth),
                   SizedBox(
                    height: 45,
                     child: Center(
                       child: InkWell(
                        onTap: () {
                        },
                        child: Text(StaticStrings.myFavPodcast,style: SettingsFonts.profiletextstyle,),
                       ),
                     ),
                   ),
                   
                   TechDivider(appWidth: appWidth),
                  SizedBox(
                    height: 45,
                     child: Center(
                       child: InkWell(
                        onTap: () {
                        },
                        child: Text(StaticStrings.logout,style: SettingsFonts.profiletextstyle,),
                       ),
                     ),
                   ),
                ],
              )
            
            
            ),
          ],
        ),
      ),
    );
  }
}


