import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/Models/fake_data.dart';
import 'package:techblog/Models/my_colors.dart';
import 'package:techblog/Models/settingstextstyle.dart';
import 'package:techblog/Views/home_page.dart';
import 'package:techblog/gen/assets.gen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
     Future.delayed(Duration(seconds: 5)).then((onValue){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    var appHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: 
          AssetImage(Assets.icons.logo.path),
          height: appHeight/7.5,
          ),
          SizedBox(height:15,),
          SpinKitFadingCube(
            color: MyColors.logocolors,
            size: appHeight/20.5,
          ),
          SizedBox(height:25,),
          Text(homePagePosterMap["loadingpagetext"],
          style: SettingsFonts.loadingtextstyle,
          )
        ],
      ),
    );
  }
}