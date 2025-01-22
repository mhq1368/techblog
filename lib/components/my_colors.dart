import 'package:flutter/material.dart';

class MyColors {
  static const Color logocolors = Color.fromARGB(255, 255, 139, 26);
  static const Color searchiconcolor = Color.fromARGB(255, 112, 112, 112);
  static const Color menuiconcolor = Color.fromARGB(255, 112, 112, 112);
  static const Color penArticles = Color.fromARGB(255, 40, 107, 184);
  static const Color postarticlecolor = Color.fromARGB(255, 255, 255, 255);
  static const Color dividercolor = Color.fromARGB(255, 112, 112, 112);
}

class MyGradiant {
  static const LinearGradient postergradiant = LinearGradient(
    colors: [
      Color.fromARGB(0, 40, 41, 46),
      Color.fromARGB(192, 72, 20, 88),
      Color.fromARGB(255, 28, 20, 81),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient hashtaggradiant = LinearGradient(
    colors: [
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(200, 63, 63, 63),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
  
  static const LinearGradient blogPostList = LinearGradient(
    colors: [
      Color.fromARGB(0, 255, 255, 255),
      Color.fromARGB(40, 158, 158, 158),
      Color.fromARGB(255, 0, 0, 0),
      
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
static const LinearGradient bottomNavigationBG = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 255, 255),
      Color.fromARGB(178, 255, 255, 255),
      Color.fromARGB(0, 255, 255, 255),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const LinearGradient bottomNav = LinearGradient(
    colors: [
      Color.fromARGB(255, 25, 0, 94),
      Color.fromARGB(255, 68, 4, 87),
    ],
     begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );


}

class SizesAll{
    static const double profilepic=100;

}
