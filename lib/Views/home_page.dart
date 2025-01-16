import 'package:flutter/material.dart';
import 'package:techblog/Widgets/hashtag_widget.dart';
import 'package:techblog/Widgets/topbar_allpages.dart';
import 'package:techblog/Widgets/header_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var appHeight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TopBar(appWidth: appWidth, appHeight: appHeight),
          HeaderPoster(appHeight: appHeight),
          HashtagHome(),
        ],
      )),
    );
  }
}