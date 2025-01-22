import 'package:flutter/material.dart';
import 'package:techblog/Widgets/blog_article.dart';
import 'package:techblog/Widgets/hashtag_widget.dart';
import 'package:techblog/Widgets/header_widget.dart';
import 'package:techblog/Widgets/podcast_blog.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.appHeight,
  });

  final double appHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderPoster(appHeight: appHeight),
          HashtagHome(),
          ArticlesBlog(),
          PodcastPage(),
          SizedBox(
            height: appHeight / 15.5,
          ),
        ],
      ),
    );
  }
}