import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techblog/Views/bottom_navigation.dart';
import 'package:techblog/Views/main_page.dart';
import 'package:techblog/Views/user_profile.dart';
import 'package:techblog/Widgets/topbar_allpages.dart';

RxInt selectedPageIndex = 0.obs;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _key=GlobalKey();
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.amberAccent,
        ),
        key: _key,
        appBar: AppBar(
          toolbarHeight: appHeight / 9.5,
          //Start----DefaultIcons
          automaticallyImplyLeading: false,
          //End----DefaultIcons
          elevation: 0,
          title: TopBar(appWidth: appWidth, appHeight: appHeight, key1: _key)
        ),
        body: Stack(
          children: [
            Obx(
              () => IndexedStack(
                index: selectedPageIndex.value,
                children: [MainPage(appHeight: appHeight), UserProfile()],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: BottomNav(
                  appWidth: appWidth,
                  appHeight: appHeight,
                  changePage: (var value) {
                    selectedPageIndex.value = value;
                  },
                ))
          ],
        ),
      ),
    );
  }
}
