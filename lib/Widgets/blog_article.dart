import 'package:flutter/material.dart';
import 'package:techblog/components/fake_data.dart';
import 'package:techblog/components/my_colors.dart';
import 'package:techblog/components/settingstextstyle.dart';
import 'package:techblog/components/static_strings.dart';
import 'package:techblog/gen/assets.gen.dart';

class ArticlesBlog extends StatelessWidget {
  const ArticlesBlog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //VariablesForDisplayDevice
    var appheight = MediaQuery.of(context).size.height;
    var appWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //TitleContainerWidget
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 30, 0),
          child: Row(
            children: [
              Image.asset(
                Assets.icons.pen.path,
                height: SettingsStyles.penIconsize,
              ),
              SizedBox(
                width: appWidth / 45,
              ),
              Text(
                StaticStrings.blogTitleStatic,
                style: SettingsFonts.titlelists,
              )
            ],
          ),
        ),
        SizedBox(
          height: appheight / 3.4,
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: articlesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 255, 255, 255)),
                //PostBlog
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Pic&Moshakhasat
                      Stack(children: [
                        Container(
                          width: appWidth / 2.2,
                          height: appheight / 5.8,
                          margin: EdgeInsets.only(
                              right: index == 0 ? appWidth / 30 : 15),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.amber, width: 2.6),
                            color: Colors.amberAccent,
                            image: DecorationImage(
                              image:
                                  AssetImage(articlesList[index].imageUrlblog),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //IncludeAllPost
                        Container(
                          width: appWidth / 2.2,
                          height: appheight / 5.8,
                          margin: EdgeInsets.only(
                              right: index == 0 ? appWidth / 30 : 15),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.amber,
                              ),
                              gradient: MyGradiant.blogPostList),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 0, 7, 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        articlesList[index].writername,
                                        style: SettingsFonts.blogWriterar,
                                      ),
                                      Text(
                                        articlesList[index].views,
                                        style: SettingsFonts.blogWriterar,
                                        softWrap: true,
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        )
                      ]),
                      //TitleArticles
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 7, 20, 0),
                        child: SizedBox(
                          width: appWidth / 2.2,
                          child: Text(
                            articlesList[index].content,
                            style: SettingsFonts.blogcontent,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
